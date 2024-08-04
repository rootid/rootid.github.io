.PHONY: run_locally

run_locally:
	@echo "Running locally"
	jekyll clean
	jekyll build
	jekyll s

clean:
	@echo "Cleaning.."
	jekyll clean

check:
	@echo "Checking any config issues.."
	jekyll doctor

build:
	@echo "Building site..."
	jekyll clean
	jekyll build
