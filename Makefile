.PHONY: build run logs stop clean

IMAGE_NAME = rootid-blog
CONTAINER_NAME = rootid-blog-dev
PORT = 1313

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
	@echo "Removing image..."
	podman rmi $(IMAGE_NAME) || true
