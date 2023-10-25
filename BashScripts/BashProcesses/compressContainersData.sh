echo -e "\nStarting Compress Process\n"

folders=$(ls -d data/*/)
for folder in $folders; do
        folderPath=${folder::-1}
        folderName=${folder:5:-1} 

        echo "Compressing $folderName"
        sudo tar cfz "LargeTgzFiles/$folderName/$folderName.tgz" "$folderPath"

        echo -e "$folderName Compressed \n"

done

echo -e "List of Containers Data Compressed: \n"
for folder in $folders; do
    folderName=${folder:5:-1} 
    echo "$folderName"
done

echo -e "\nFinished Compress Process\n"