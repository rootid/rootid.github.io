#!/bin/sh

#run locally on port 80
docker run -p 80:4000 -v $(pwd):/site bretfisher/jekyll-serve

#docker run -p 80:4000 -v $(pwd):/site -e JEKYLL_NEW=true bretfisher/jekyll-serve
