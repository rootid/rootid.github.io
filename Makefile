.PHONY: install update

install:
	@echo "Installing Jekyll"
	bundle install

update:
	@echo "Updating Jekyll"

start:
	@echo "Starting Jekyll"
	bundle exec jekyll serve --watch
