#!/bin/env bash
echo -e "\nStarting Handle Folders Process\n"

if ! [ -d "SplitedFiles" ]; then
        echo -e "Creating SplitedFiles Folder\n"
        mkdir SplitedFiles
fi

if ! [ -d "data" ]; then
        echo -e "Creating data Folder\n"
        mkdir data
fi

if ! [ -d "LargeTgzFiles" ]; then
        echo -e "Creating LargeTgzFiles Folder\n"
        mkdir LargeTgzFiles
fi

folders=$(ls -d data/*/)
for folder in $folders; do
        folderPath=${folder::-1}
        folderName=${folder:5:-1} 

    if ! [ -d "SplitedFiles/$folderName" ]; then
            echo "Creating $folderName Folder in SplitedFiles"
            mkdir SplitedFiles/$folderName
    fi
    
    if ! [ -d "LargeTgzFiles/$folderName" ]; then
            echo "Creating $folderName Folder in LargeTgzFiles"
            mkdir LargeTgzFiles/$folderName
    fi

done

folders=$(ls -d SplitedFiles/*/)
for folder in $folders; do
    folderPath=${folder::-1}
    folderName=${folder:13:-1} 

    if ! [ -d "data/$folderName" ]; then
            echo "Creating $folderName Folder in data"
            mkdir data/$folderName
    fi
    
    if ! [ -d "LargeTgzFiles/$folderName" ]; then
            echo "Creating $folderName Folder in LargeTgzFiles"
            mkdir LargeTgzFiles/$folderName
    fi

done

echo -e "\nFinished Handle Folders Process\n"