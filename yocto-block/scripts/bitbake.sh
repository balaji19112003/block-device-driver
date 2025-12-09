#!/bin/bash
RECIPE=$1
echo "======================================="
echo "Building recipe: $RECIPE"
echo "======================================="
DIR="meta-myblock/recipes-myblock/${RECIPE}"
cd $DIR || exit
BBFILE="${RECIPE}_1.0.bb"
WORKDIR="../../../build/${RECIPE}"
mkdir -p "$WORKDIR"
cp -r * "$WORKDIR"
cd "$WORKDIR"
make
echo "Build Finished!"
