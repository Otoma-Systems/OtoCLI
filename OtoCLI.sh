#!/bin/env bash

function invalidOptionWarning(){
    echo ""
    echo "  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    echo "  ┃----------------------------------------------┃"
    echo "  ┃ -- ! -- Please, chose a valid option -- ! -- ┃"
    echo "  ┃----------------------------------------------┃"
    echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    sleep 3
}
function exitWarning(){
    clear
    echo "  ------------------------------------------------"
    echo "  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    echo "  ┃----------------------------------------------┃"
    echo "  ┃ -- # --  OtoCli Finalized, Goodbye!  -- # -- ┃"
    echo "  ┃ -- # --      Thanks For Using!       -- # -- ┃"
    echo "  ┃----------------------------------------------┃"
    echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo "  ------------------------------------------------"
    exit 0
}

#region Sub Menus
function initialSetupMenu(){
    while [ true ] ;
    do
        clear
        echo "  ------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "  ------------------------------------------------"
        echo "  ┏━━━━━━━━━━━━━━━ Initial Setups ━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Setup 1 ----------------------- Setup Docker ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option B --------------------------- Go Back ┃"
        echo "  ┃ Option E ----------------------- Exit OtoCli ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ------------------------------------------------"
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
        echo "  ------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "  ------------------------------------------------"
        echo "  ┏━━━━━━━━━━━━━━━━━━━ Docker ━━━━━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option 1 ----------------- Deploy Containers ┃"
        echo "  ┃ Option 2 ---------------- Restart Containers ┃"
        echo "  ┃ Option 4 ----------------- Update Containers ┃"
        echo "  ┃ Option 6 -- Clear All Containers from Docker ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option B --------------------------- Go Back ┃"
        echo "  ┃ Option E ----------------------- Exit OtoCli ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ------------------------------------------------"
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
                "4")
                    bash ~/OtoCLI/BashScripts/UpdateContainers.sh
                    exit 0
                    ;;
                "6")
                    bash ~/OtoCLI/BashScripts/ClearAllContainersAndImages.sh
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
        echo "  ------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "  ------------------------------------------------"
        echo "  ┏━━━━━━━━━━━━━━━━━━ Zerotier ━━━━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option 1 ------------ Setup Zerotier on Host ┃"
        echo "  ┃ Option 2 ------------- Zerotier Join Network ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option B --------------------------- Go Back ┃"
        echo "  ┃ Option E ----------------------- Exit OtoCli ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ------------------------------------------------"
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
        echo "  ------ ## ---- Welcome to  OtoCli ---- ## ------"
        echo "  ------------------------------------------------"
        echo "  ┏━━━━━━━━━━━━━━━━━━━ Extras ━━━━━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option 1 ------- Make OtoCLI File Executable ┃"
        echo "  ┃ Option 2 ------- Add OtoCLI to Bash Commands ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option B --------------------------- Go Back ┃"
        echo "  ┃ Option E ----------------------- Exit OtoCli ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ------------------------------------------------"
        echo ""

        read -p "Option: " userSelectedOption

        echo "Your Selected Option is: $userSelectedOption"
        read -p "Thats Correct? (y/n): " userConfirmation

        if [ $userConfirmation == "y" ]; then
            case $userSelectedOption in

                "1")
                    chmod +x ~/OtoCLI/OtoCLI.sh
                    exit 0
                    ;;
                "2")
                    bash ~/OtoCLI/BashScripts/AddCliToBash.sh
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
#endregion

function mainMenu(){
    while [ true ] ;
    do
        clear
        echo "  ------ ## ---- Welcome to  OtoCli ---- ## ------"  
        echo "  ------------------------------------------------"
        echo "  ┏━━━━━━━━━━━━━━ Your Option Are! ━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option 1 -------------------- Initial Setups ┃"
        echo "  ┃ Option 2 ---------------------------- Docker ┃"
        echo "  ┃ Option 3 -------------------------- Zerotier ┃"
        echo "  ┃ Option 0 ---------------------------- Extras ┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
        echo "  ┃----------------------------------------------┃"
        echo "  ┃ Option E ----------------------- Exit OtoCli ┃"
        echo "  ┃----------------------------------------------┃"
        echo "  ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
        echo "  ------------------------------------------------"
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