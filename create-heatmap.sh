#!/bin/bash
git_remote=$1
days_backwards=$2
repository_name="sub-repository"

bash initialize-repository.sh $repository_name 1>/dev/null
bash create-commits.sh $repository_name $days_backwards 1>/dev/null
bash push-to-github.sh $repository_name $git_remote 1>/dev/null