.PHONY: build run logs stop clean clean-all search

IMAGE_NAME = rootid-blog
CONTAINER_NAME = rootid-blog-dev
PORT = 1313
BASE_IMAGE = $(shell awk '/^FROM/ {print $$2}' Containerfile)
# Keep in sync with PAGEFIND_VERSION in .github/workflows/hugo.yaml
PAGEFIND_VERSION = 1.5.2

build:
	@echo "Building Podman image..."
	podman build -t $(IMAGE_NAME) -f Containerfile .

run: build
	@echo "Starting Hugo development server in Podman..."
	podman run --rm -d --name $(CONTAINER_NAME) -p $(PORT):1313 -v $(PWD):/src $(IMAGE_NAME)
	@echo "========================================================"
	@echo "Blog is running locally at: http://localhost:$(PORT)"
	@echo "View live logs with:  make logs"
	@echo "Stop the server with: make stop"
	@echo "========================================================"

logs:
	podman logs -f $(CONTAINER_NAME)

stop:
	@echo "Stopping container..."
	podman stop $(CONTAINER_NAME) || true

clean: stop
	@echo "Removing local image..."
	podman rmi $(IMAGE_NAME) || true

clean-all: clean
	@echo "Removing base Hugo image and dangling resources..."
	podman rmi $(BASE_IMAGE) || true
	podman image prune -f

# Production-like build with the Pagefind search index, served at
# http://localhost:1414 (`make run` doesn't build the index). Needs Node (npx).
search: build
	@echo "Building site into public/..."
	podman run --rm -v $(PWD):/src $(IMAGE_NAME) --buildFuture --cleanDestinationDir
	@echo "Indexing and serving at http://localhost:1414 (Ctrl-C to stop)..."
	npx --yes pagefind@$(PAGEFIND_VERSION) --site public --serve
