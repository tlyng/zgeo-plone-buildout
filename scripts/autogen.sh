#!/bin/sh

# This scripts runs a command in specified directory if a file does not exist there.
# Created for trunk checkout of libspatialindex, running autogen.sh if configure
# script is not found

DIR=$1
FILE=$2
CMD=$3

if [ ! -f "${DIR}/${FILE}" ]; then
	cd ${DIR}
	./${CMD}
fi;
