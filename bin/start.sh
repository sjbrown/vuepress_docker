#! /bin/bash

echo "====== Starting vuepress shell ====="
echo " within the shell, you can run commands:"
echo ""
echo "  bin/serve"
echo "  vuepress -v"
echo "  vuepress build"
echo "  vuepress dev   ( server will be visible at http://localhost:8080 )"
echo ""

mkdir -p /tmp/roothome

docker run --rm -it -p 8080:8080 \
           -v $PWD/docs:/app/docs \
           -v /tmp/roothome:/root \
           vuepress bash
