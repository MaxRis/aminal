#!/bin/sh

echo "Starting deploy script..."
MY_TAG="$( git describe --exact-match "$(git rev-parse HEAD)" 2>/dev/null )"
if [ -z "$MY_TAG" ] ; then
  echo "Variable is empty, giong to try to push a tag..."

  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"

  git tag -a Nightly2 -m "Nightly Build 2"

  git remote add origin-repo https://${GH_TOKEN}@github.com/MaxRis/aminal.git > /dev/null 2>&1
 # git push origin-repo Nightly2
else
  echo "MY_TAG=$MY_TAG"
fi
