#!/bin/bash

readonly repoPath="/Users/mohsentaheri/Documents/Golang/"

repos=(
https://github.com/mhthrh/blueBank.git
https://github.com/mhthrh/Fyne-Client-Android-with-Api-for-SPY.git
https://github.com/mhthrh/GoOauth2.git
    )

if [ ! -d "$repoPath" ]; then
    mkdir "$repoPath"
    echo "directory '$repoPath' created."
else
    echo "directory '$repoPath' already exists."
fi


echo "Start clone repo(s) from GitHub.com"

for repo in "${repos[@]}"; do
    for part in $(echo "$repo" | awk -F '/' '{for (i=1; i<=NF; i++) print $i}'); do
        ength=${#part}
        if [ "${part: $ength-4: $ength}" = ".git" ]; then
            c="$repoPath${part: 0: $ength-4}"
            echo $c
            git clone $repo $c
        fi
    done
done