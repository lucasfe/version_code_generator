#!/bin/bash

# config
source=${SOURCE:-.}

cd ${GITHUB_WORKSPACE}/${source}

count=$(git rev-list --count HEAD)
echo "Current count is ${count}"
echo "Current offset is ${1}"

result=`expr $count + $1`
current_branch=$(git rev-parse --abbrev-ref HEAD)
echo "Current branch is ${current_branch}"
echo "::set-output name=code::$result"