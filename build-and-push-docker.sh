#!/bin/sh
imagename='tweet-archiver'
if [ $# -ne 0 ]
  then
    echo "Argument supplied, using $1 as tag"
    tag=$1
    docker build --pull --rm -f "Dockerfile" -t rutgersmit/$imagename:$tag "."
    docker push rutgersmit/$imagename:$tag
  else
    echo "No argument supplied, no image built."
fi


