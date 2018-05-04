#!/bin/bash -e
repository_name=$1
git_remote=$2

cd $repository_name
git remote add origin $git_remote
git push -u origin master