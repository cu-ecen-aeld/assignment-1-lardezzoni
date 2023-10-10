#!/bin/sh

set -x
if [ $# -lt 3 ]
then
    FILESDIR=$1
    SEARCHDIR=$2
else
    echo "Invalid arguments"
    exit 1
fi
if [ -d "${FILESDIR}" ]
then
    OUTPUT=$(ls -Rl ${FILESDIR}| grep "^-" | wc -l)
    STROUTPUT=$(grep -R ${SEARCHDIR} ${FILESDIR} | wc -l)
    echo "The number of files are ${OUTPUT} and the number of matching lines are ${STROUTPUT}"
    exit 0
else
    echo "Not a directory"
    exit 1
fi