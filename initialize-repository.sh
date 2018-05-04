#!/bin/bash -e
repository_name=$1

rm -rf $repository_name
mkdir $repository_name
cd $repository_name
git init