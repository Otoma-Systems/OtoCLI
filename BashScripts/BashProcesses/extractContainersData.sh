#!/bin/env bash
echo -e "\nStarting Extract Process\n"

folders=$(ls -d SplitedFiles/*/)

for folder in $folders; do
    folderPath=${folder::-1}
    folderName=${folder:13:-1} 

    echo -e "Extracting $folderName.tgz \n"
    sudo tar xvzf LargeTgzFiles/$folderName/$folderName.tgz

    echo -e "\n$folderName Extracted \n"

done

echo -e "List of Containers Extracted: \n"
for folder in $folders; do
    folderName=${folder:13:-1} 
    echo "$folderName"
done

echo -e "\nFinished Extract Process\n"