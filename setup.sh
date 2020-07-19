#!/bin/sh


THIS_DIR="$(readlink -f $(dirname $0))"
docker run -ti \
	--volume "$THIS_DIR/:$THIS_DIR" \
	--privileged \
	-w $THIS_DIR \
	yocto:3.1 $THIS_DIR/init/gosu 1000 /bin/bash
