#!/bin/sh -l

count=$(git rev-list --count HEAD)
result=`expr $count + $1`
echo "::set-output name=code::$result"
