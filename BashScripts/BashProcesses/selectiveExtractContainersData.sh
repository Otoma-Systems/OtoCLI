#!/bin/env bash
echo -e "\nStarting Selective Extract Process\n"

folders=$(ls -d SplitedFiles/*/)

echo -e "Select one of the containers to extract, The options are:"
for folderOption in $folders; do
    folderOptionName=${folderOption:13:-1} 
    echo -e "$folderOptionName"
done

read -p "Which container should be extracted?: " containerName

for folder in $folders; do
    folderPath=${folder::-1}
    folderName=${folder:13:-1} 

    if [ "$folderName" == "$containerName" ]; then
        echo -e "Extracting $folderName.tgz \n"
        sudo tar xvzf LargeTgzFiles/$folderName/$folderName.tgz

        echo -e "\n$folderName Extracted \n"
    fi

done

echo -e "\nFinished Selective Extract Process\n"