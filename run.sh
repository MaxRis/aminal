#!/bin/sh

MY_TAG="$( git describe --exact-match "$(git rev-parse HEAD)" 2>/dev/null )"
if [ -z "$MY_TAG" ] ; then
    echo "Variable is empty"
else
    echo "MY_TAG=$MY_TAG"
fi
