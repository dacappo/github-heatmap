#!/bin/bash -e
repository_name=$1
commits_number=$2
commit_message="Yet another commit"

cd $repository_name

day_counter=1
while [ $day_counter -le $commits_number ]
do
    delta="-"$day_counter"d"
    date=$(date -v $delta)
    num=$(( RANDOM % 4 ))
    for ((n=0;n<num;n++)); do 
        echo "$date:$commit_message" >> history.txt
        git add . -A
        git commit -m "$commit_message"
        git commit --amend --no-edit --date="$date"
    done
    ((day_counter++))
done