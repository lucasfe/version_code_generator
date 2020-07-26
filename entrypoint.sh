#!/bin/sh -l
ls /github/workspace
count=1
result=`expr $count + $1`
echo "::set-output name=code::$result"
