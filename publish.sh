#!/bin/sh

#cleanup
rm -rf _site/
#docker run --rm -v $(pwd):/src -e JEKYLL_ENV=production csainty/blog jekyll build -s /src -d /src/_site
#git add .
#git push origin master --force
