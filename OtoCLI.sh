#!/bin/env bash

echo -e "\n-- Welcome to OtoCli, please chose an option: --"  

while [ true ]; do

    echo "------------------------------------------------"
    echo "--------------- Your Option Are! ---------------"
    echo "------------------------------------------------"
    echo "┏━━━━━━━━━━━━━━━ Initial Setups ━━━━━━━━━━━━━━━┓"
    echo "┃----------------------------------------------┃"
    echo "┃ Option 1 ---------------------- Setup Docker ┃"
    echo "┃ Option 2 --------------------- Setup NetData ┃"
    echo "┃----------------------------------------------┃"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo "┏━━━━━━━━━━━━━━━━━━━ Docker ━━━━━━━━━━━━━━━━━━━┓"
    echo "┃----------------------------------------------┃"
    echo "┃ Option 3 ----------------- Deploy Containers ┃"
    echo "┃ Option 4 ---------------- Restart Containers ┃"
    echo "┃ Option 5 ----------------- Backup Containers ┃"
    echo "┃ Option 6 ----------------- Update Containers ┃"
    echo "┃ Option 7 ------ Backup and Update Containers ┃"
    echo "┃ Option 8 -- Clear All Containers from Docker ┃"
    echo "┃ Option 9 -------- Extract specific Container ┃"
    echo "┃----------------------------------------------┃"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo "┏━━━━━━━━━━━━━━━━━━ Zerotier ━━━━━━━━━━━━━━━━━━┓"
    echo "┃----------------------------------------------┃"
    echo "┃ Option 10 ----------- Setup Zerotier on Host ┃"
    echo "┃ Option 11 ------------ Zerotier Join Network ┃"
    echo "┃----------------------------------------------┃"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo "┏━━━━━━━━━━━━━━━━━━━ Extras ━━━━━━━━━━━━━━━━━━━┓"
    echo "┃----------------------------------------------┃"
    echo "┃ Option E ----------------------- Exit OtoCli ┃"
    echo "┃----------------------------------------------┃"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo "------------------------------------------------"
    echo ""

    read -p "Option: " userSelectedOption
    read -p "Your Selected Option is: $userSelectedOption, Thats Correct? (yes/no): " userConfirmation

    if [ $userConfirmation == "yes" ]; then

        case $userSelectedOption in

            "1")
                bash BashScripts/SetupDocker.sh
                break
                ;;
            "2")
                bash BashScripts/SetupNetData.sh
                break
                ;;
            "3")
                bash BashScripts/DeployContainers.sh
                break
                ;;
            "4")
                bash BashScripts/RestartAllContainers.sh
                break
                ;;
            "5")
                bash BashScripts/BackupContainers.sh
                break
                ;;
            "6")
                bash BashScripts/UpdateContainers.sh
                break
                ;;
            "7")
                bash BashScripts/BackupAndUpdateContainers.sh
                break
                ;;
            "8")
                bash BashScripts/ClearAllContainersAndImages.sh
                break
                ;;
            "9")
                bash BashScripts/ExtractSelectiveContainers.sh
                break
                ;;
            "10")
                read -p "Network Addres to join after installation: " networkAddr
                curl -s https://install.zerotier.com | sudo bash
                echo -e "\nJoining $networkAddr\n"
                sudo zerotier-cli join $networkAddr
                break
                ;;
            "11")
                read -p "Network Addres to join: " networkAddr
                echo -e "\nJoining $networkAddr\n"
                sudo zerotier-cli join $networkAddr
                break
                ;;
            "E")
                echo -e "OtoCli Finalized, Goodbye!\n"
                break
                ;;
            *)
                echo -e "\nPlease, chose a valid option!\n"
                ;;
        esac
        
    fi

done
