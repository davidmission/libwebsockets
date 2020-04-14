#!/bin/bash

J=`basename $1`
$1 $2 $3 $4 $5 $6 $7 $8 $9 2>/dev/null 1>/dev/null 0</dev/null &
SP=$?
echo $! > /tmp/sai-ctest-$J.$SAI_INSTANCE_IDX
if [ $SP -ne 0 ] ; then
        exit 1
fi
sleep 0.5
exit 0
