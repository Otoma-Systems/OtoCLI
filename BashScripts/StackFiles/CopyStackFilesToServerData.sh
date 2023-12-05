#!/bin/env bash
echo -e "\nStarting Setup Of Stack Files"
    echo ""
    if [ -e ~/ServerData/StartStack.sh ]
    then 
        echo "The file "StartStack.sh" already exist!" 
        read -p "The file will be overwritten, are you sure? (y/n): " userConfirmation

        if [ $userConfirmation == "y" ]
        then
            cp ~/OtoCLI/BashScripts/StackFiles/StartStack_example.sh ~/ServerData/StartStack.sh
        fi
    else

        cp ~/OtoCLI/BashScripts/StackFiles/StartStack_example.sh ~/ServerData/StartStack.sh
    fi

    echo ""

    if [ -e ~/ServerData/StopStack.sh ]
    then 
        echo "The file "StopStack.sh" already exist!" 
        read -p "The file will be overwritten, are you sure? (y/n): " userConfirmation

        if [ $userConfirmation == "y" ]
        then
            cp ~/OtoCLI/BashScripts/StackFiles/StopStack_example.sh ~/ServerData/StopStack.sh
        fi
    else
        cp ~/OtoCLI/BashScripts/StackFiles/StopStack_example.sh ~/ServerData/StopStack.sh
    fi
    echo ""