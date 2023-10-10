#!/bin/sh

if [ $# -lt 3 ]
then
    VARPATH=$1
    TEXT=$2
else
    echo "invalid arguments"
    exit 1
fi

DIR=${VARPATH%/*}; FILE=${VARPATH##*/}


mkdir -p ${DIR} 
cd ${DIR}
touch ${FILE} && echo ${TEXT}>>${FILE}