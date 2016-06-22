#!/bin/bash

export SRC="/home/sylvain/dev/xivo-ctid-ng/"

docker run -v $(pwd):/etc/xivo-ctid-ng/conf.d/ -v $SRC:/usr/src/xivo-ctid-ng/ -e XIVO_UUID=sylvain -it ctid-ng bash
