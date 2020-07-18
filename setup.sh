#!/bin/sh


THIS_DIR="$(readlink -f $(dirname $0))"

if [ -d $THIS_DIR/build ]; then
	rm -rf $THIS_DIR/build
fi
mkdir -p $THIS_DIR/build
chmod 777 -R $THIS_DIR/build
docker run -ti \
	--volume "$THIS_DIR/layers/:/env/" \
	--volume "$THIS_DIR/build/:/home/build/" \
	--volume "$THIS_DIR/init/gosu:/usr/bin/gosu" \
	yocto:3.1 gosu 1000 /bin/bash
