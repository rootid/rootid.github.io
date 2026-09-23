FROM hugomods/hugo:exts

WORKDIR /src

# Expose Hugo's default port
EXPOSE 1313

# Run the Hugo development server
CMD ["server", "--bind", "0.0.0.0", "--buildFuture", "--disableFastRender"]
