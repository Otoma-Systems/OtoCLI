#!/bin/env bash

function invalidOptionWarning(){
    echo ""
    echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    echo "┃----------------------------------------------┃"
    echo "┃ -- ! -- Please, chose a valid option -- ! -- ┃"
    echo "┃----------------------------------------------┃"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    sleep 3
}
function exitWarning(){
    clear
    echo "------------------------------------------------"
    echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    echo "┃----------------------------------------------┃"
    echo "┃ -- # --  OtoCli Finalized, Goodbye!  -- # -- ┃"
    echo "┃ -- # --      Thanks For Using!       -- # -- ┃"
    echo "┃----------------------------------------------┃"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo "------------------------------------------------"
    exit 0
}

#region Sub Menus
function initialSetupMenu(){
    while [ true ] ;
    do
        clear
        echo "------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "------------------------------------------------"
        echo "┏━━━━━━━━━━━━━━━ Initial Setups ━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Setup 1 ----------------------- Setup Docker ┃"
        echo "┃ Setup 2 ---------------------- Setup NetData ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option B --------------------------- Go Back ┃"
        echo "┃ Option E ----------------------- Exit OtoCli ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "------------------------------------------------"
        echo ""

        read -p "Option: " userSelectedOption

        echo "Your Selected Option is: $userSelectedOption"
        read -p "Thats Correct? (y/n): " userConfirmation

        if [ $userConfirmation == "y" ]; then
            case $userSelectedOption in

                "1")
                    bash ~/OtoCLI/BashScripts/SetupDocker.sh
                    exit 0
                    ;;
                "2")
                    bash ~/OtoCLI/BashScripts/SetupNetData.sh
                    exit 0
                    ;;
                "B")
                    clear
                    break
                    ;;
                "E")
                    exitWarning;
                    ;;
                *)
                    invalidOptionWarning
                    ;;
                    
            esac
        fi
    done
}
function dockerMenu(){
    while [ true ] ;
    do
        clear
        echo "------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "------------------------------------------------"
        echo "┏━━━━━━━━━━━━━━━━━━━ Docker ━━━━━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option 1 ----------------- Deploy Containers ┃"
        echo "┃ Option 2 ---------------- Restart Containers ┃"
        echo "┃ Option 3 ----------------- Backup Containers ┃"
        echo "┃ Option 4 ----------------- Update Containers ┃"
        echo "┃ Option 5 ------ Backup and Update Containers ┃"
        echo "┃ Option 6 -- Clear All Containers from Docker ┃"
        echo "┃ Option 7 -------- Extract specific Container ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option B --------------------------- Go Back ┃"
        echo "┃ Option E ----------------------- Exit OtoCli ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "------------------------------------------------"
        echo ""

        read -p "Option: " userSelectedOption

        echo "Your Selected Option is: $userSelectedOption"
        read -p "Thats Correct? (y/n): " userConfirmation

        if [ $userConfirmation == "y" ]; then
            cd ~/ServerData
            case $userSelectedOption in

                "1")
                    bash ~/OtoCLI/BashScripts/DeployContainers.sh
                    exit 0
                    ;;
                "2")
                    bash ~/OtoCLI/BashScripts/RestartAllContainers.sh
                    exit 0
                    ;;
                "3")
                    bash ~/OtoCLI/BashScripts/BackupContainers.sh
                    exit 0
                    ;;
                "4")
                    bash ~/OtoCLI/BashScripts/UpdateContainers.sh
                    exit 0
                    ;;
                "5")
                    bash ~/OtoCLI/BashScripts/BackupAndUpdateContainers.sh
                    exit 0
                    ;;
                "6")
                    bash ~/OtoCLI/BashScripts/ClearAllContainersAndImages.sh
                    exit 0
                    ;;
                "7")
                    bash ~/OtoCLI/BashScripts/ExtractSelectiveContainers.sh
                    exit 0
                    ;;
                "B")
                    clear
                    break
                    ;;
                "E")
                    exitWarning;
                    ;;
                *)
                    invalidOptionWarning
                    ;;
            esac
        fi
    done
}
function stackMenu(){
    while [ true ] ;
    do
        clear
        echo "------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "------------------------------------------------"
        echo "┏━━━━━━━━━ Container Stack Operations ━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Operation S -------------------- Start Stack ┃"
        echo "┃ Operation K --------------------- Stop Stack ┃"
        echo "┃ Operation R ------------------ Restart Stack ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "┏━━━━━━━━━ Container Stack Selections ━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Stack 1 ---------------------- Core Services ┃"
        echo "┃ Stack 2 ----------------- Essential Services ┃"
        echo "┃ Stack 3 ------------------- General Services ┃"
        echo "┃ Stack 4 ------------- Non Essential Services ┃"
        echo "┃ Stack 5 --------------------- Other Services ┃"
        echo "┃ Stack 6 ----------------- All Above Services ┃"
        echo "┃----------------------------------------------┃"
        echo "┃ - Utilization: Operation + Stack. Ex: [S1] - ┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option B --------------------------- Go Back ┃"
        echo "┃ Option E ----------------------- Exit OtoCli ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "------------------------------------------------"
        echo ""

        read -p "Option: " userSelectedOption

        echo "Your Selected Option is: $userSelectedOption"
        read -p "Thats Correct? (y/n): " userConfirmation

        if [ $userConfirmation == "y" ]; then
            cd ~/ServerData
            case $userSelectedOption in

                "S1")
                    bash ~/ServerData/StartStack.sh -C
                    exit 0
                    ;;
                "S2")
                    bash ~/ServerData/StartStack.sh -E
                    exit 0
                    ;;
                "S3")
                    bash ~/ServerData/StartStack.sh -G
                    exit 0
                    ;;
                "S4")
                    bash ~/ServerData/StartStack.sh -N
                    exit 0
                    ;;
                "S5")
                    bash ~/ServerData/StartStack.sh -O
                    exit 0
                    ;;
                "S6")
                    bash ~/ServerData/StartStack.sh -A
                    exit 0
                    ;;
                "K1")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -C
                    exit 0
                    ;;
                "K2")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -E
                    exit 0
                    ;;
                "K3")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -G
                    exit 0
                    ;;
                "K4")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -N
                    exit 0
                    ;;
                "K5")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -O
                    exit 0
                    ;;
                "K6")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -A
                    exit 0
                    ;;
                "R1")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -C
                    bash ~/ServerData/StartStack.sh -C
                    exit 0
                    ;;
                "R2")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -E
                    bash ~/ServerData/StartStack.sh -E
                    exit 0
                    ;;
                "R3")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -G
                    bash ~/ServerData/StartStack.sh -G
                    exit 0
                    ;;
                "R4")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -N
                    bash ~/ServerData/StartStack.sh -N
                    exit 0
                    ;;
                "R5")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -O
                    bash ~/ServerData/StartStack.sh -O
                    exit 0
                    ;;
                "R6")
                    bash ~/OtoCLI/BashScripts/StopStack.sh -A
                    bash ~/ServerData/StartStack.sh -A
                    exit 0
                    ;;
                "B")
                    clear
                    break
                    ;;
                "E")
                    exitWarning;
                    ;;
                *)
                    invalidOptionWarning
                    ;;
            esac
        fi
    done
}
function zerotierMenu(){
    while [ true ] ;
    do
        clear
        echo "------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "------------------------------------------------"
        echo "┏━━━━━━━━━━━━━━━━━━ Zerotier ━━━━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option 1 ------------ Setup Zerotier on Host ┃"
        echo "┃ Option 2 ------------- Zerotier Join Network ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option B --------------------------- Go Back ┃"
        echo "┃ Option E ----------------------- Exit OtoCli ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "------------------------------------------------"
        echo ""

        read -p "Option: " userSelectedOption

        echo "Your Selected Option is: $userSelectedOption"
        read -p "Thats Correct? (y/n): " userConfirmation

        if [ $userConfirmation == "y" ]; then
            case $userSelectedOption in

                "1")
                    read -p "Network Addres to join after installation: " networkAddr
                    curl -s https://install.zerotier.com | sudo bash
                    echo -e "\nJoining $networkAddr\n"
                    sudo zerotier-cli join $networkAddr
                    exit 0
                    ;;
                "2")
                    read -p "Network Addres to join: " networkAddr
                    echo -e "\nJoining $networkAddr\n"
                    sudo zerotier-cli join $networkAddr
                    exit 0
                    ;;
                "B")
                    clear
                    break
                    ;;
                "E")
                    exitWarning;
                    ;;
                *)
                    invalidOptionWarning
                    ;;
            esac
        fi
    done
}
function extrasMenu(){
    while [ true ] ;
    do
        clear
        echo "------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "------------------------------------------------"
        echo "┏━━━━━━━━━━━━━━━━━━━ Extras ━━━━━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option B --------------------------- Go Back ┃"
        echo "┃ Option E ----------------------- Exit OtoCli ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "------------------------------------------------"
        echo ""

        read -p "Option: " userSelectedOption

        echo "Your Selected Option is: $userSelectedOption"
        read -p "Thats Correct? (y/n): " userConfirmation

        if [ $userConfirmation == "y" ]; then
            case $userSelectedOption in

                "B")
                    clear
                    break
                    ;;
                "E")
                    exitWarning;
                    ;;
                *)
                    invalidOptionWarning
                    ;;

            esac
        fi
    done
}
#endregion

function mainMenu(){
    while [ true ] ;
    do
        clear
        echo "------ ## ---- Welcome to  OtoCli ---- ## ------"  
        echo "------------------------------------------------"
        echo "┏━━━━━━━━━━━━━━ Your Option Are! ━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option 1 -------------------- Initial Setups ┃"
        echo "┃ Option 2 ---------------------------- Docker ┃"
        echo "┃ Option 3 -------- Container Stack Management ┃"
        echo "┃ Option 4 -------------------------- Zerotier ┃"
        echo "┃ Option 0 ---------------------------- Extras ┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "┃----------------------------------------------┃"
        echo "┃ Option E ----------------------- Exit OtoCli ┃"
        echo "┃----------------------------------------------┃"
        echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "------------------------------------------------"
        echo ""

        read -p "Option: " userSelectedOption

        case $userSelectedOption in

            "1")
                initialSetupMenu;
                ;;
            "2")
                dockerMenu;
                ;;
            "3")
                stackMenu;
                ;;
            "4")
                zerotierMenu;
                ;;
            "0")
                extrasMenu;
                ;;
            "E")
                exitWarning;
                ;;
            *)
                invalidOptionWarning
                ;;
        esac
    done
}

mainMenu;