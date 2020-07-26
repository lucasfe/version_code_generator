#!/bin/sh -l
cd /github/workspace
ls /github/workspace
count=$(git rev-list --count HEAD)
result=`expr $count + $1`
echo "::set-output name=code::$result"
