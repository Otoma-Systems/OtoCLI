echo -e "\nStarting Split Process\n"

folders=$(ls -d data/*/)
for folder in $folders; do
        folderPath=${folder::-1}
        folderName=${folder:5:-1} 

        echo "Spliting $folderName.tgz"
        sudo split -b 50m --suffix-length=2 --numeric-suffix "LargeTgzFiles/$folderName/$folderName.tgz" "SplitedFiles/$folderName/$folderName.tgz."

        echo -e "$folderName Splitted \n"

done

echo -e "List of Containers tgz files Splitted: \n"
for folder in $folders; do
    folderName=${folder:5:-1} 
    echo "$folderName"
done

echo -e "\nFinished Split Process\n"