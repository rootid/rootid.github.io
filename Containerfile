# Keep in sync with HUGO_VERSION in .github/workflows/hugo.yaml
FROM hugomods/hugo:exts-0.147.7

WORKDIR /src

# Expose Hugo's default port
EXPOSE 1313

# Run the Hugo development server
CMD ["server", "--bind", "0.0.0.0", "--buildFuture", "--disableFastRender"]
