#!/bin/env bash
echo -e "\nStarting Backup Process\n"
    echo -e "Adding all files to stage! \n"
        git add .

    commitMessage="New Backup Files added from: $(date)"
    echo -e "\nCommiting all files with commit message: $commitMessage \n"
        git commit -m "$commitMessage"

    echo -e "\nPushing commits to origin \n"
        git push
        echo ""
        git status
echo -e "\nFinished Backup Process\n"
