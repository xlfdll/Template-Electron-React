#!/bin/bash

version=`cat version.txt`
build=$[`git log --oneline | wc -l`]
builddate=`date +"%F" `
buildtime=`date +"%T" `
commithash=`git show -s --format=%H`

echo "Generating build $build ($builddate $buildtime)..."

npm --no-git-tag-version --allow-same-version version $version.$build > /dev/null

echo "Done."
