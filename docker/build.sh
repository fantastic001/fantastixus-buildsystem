#!/bin/sh

THIS_DIR="$(dirname $0)"

docker build "$THIS_DIR" -t yocto:3.1
