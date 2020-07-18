#!/bin/sh


THIS_DIR="$(readlink -f $(dirname $0))"

if [ -d $THIS_DIR/build ]; then
	rm -rf $THIS_DIR/build
fi
mkdir -p $THIS_DIR/build
chmod 777 -R $THIS_DIR/build
docker run -ti \
	--volume "$THIS_DIR/:$THIS_DIR" \
	-w $THIS_DIR \
	yocto:3.1 $THIS_DIR/init/gosu 1000 /bin/bash
