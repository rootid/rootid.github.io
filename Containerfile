FROM alpine:latest

# Install Hugo extended version
RUN apk add --no-cache hugo git

WORKDIR /src

# Expose Hugo's default port
EXPOSE 1313

# Run the Hugo development server
CMD ["hugo", "server", "--bind", "0.0.0.0", "--buildFuture", "--disableFastRender"]
