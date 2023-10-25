#!/bin/env bash
echo -e "\nStarting Unsplit Process\n"

folders=$(ls -d SplitedFiles/*/)

for folder in $folders; do
    folderPath=${folder::-1}
    folderName=${folder:13:-1} 

    echo "Putting splited files back again for $folderName"
    sudo cat $folderPath/$folderName.tgz.* > LargeTgzFiles/$folderName/$folderName.tgz
    echo -e "Finished unspliting $folderName\n"

done

echo -e "List of Containers Large tgz files restored: \n"
for folder in $folders; do
    folderName=${folder:13:-1} 
    echo "$folderName"
done

echo -e "\nFinished Unsplit Process\n"