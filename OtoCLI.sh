#!/bin/env bash
echo -e "\n-- Welcome to OtoCli, please chose an option: --"  

while [ true ]; do

    echo "------------------------------------------------"
    echo "-------------------- OtoCLI --------------------"
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
                clear
                echo "┏━━━━━━━━━━━━━━━ Initial Setups ━━━━━━━━━━━━━━━┓"
                echo "┃----------------------------------------------┃"
                echo "┃ Option 1 ---------------------- Setup Docker ┃"
                echo "┃ Option 2 --------------------- Setup NetData ┃"
                echo "┃----------------------------------------------┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
                echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
                echo "┃----------------------------------------------┃"
                echo "┃ Option E ----------------------- Exit OtoCli ┃"
                echo "┃----------------------------------------------┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

                read -p "Option: " userSelectedOption

                read -p "Your Selected Option is: $userSelectedOption, Thats Correct? (y/n): " userConfirmation

                if [ $userConfirmation == "y" ]; then
                    cd ~/ServerData
                    case $userSelectedOption in

                        "1")
                            bash ~/OtoCLI/BashScripts/SetupDocker.sh
                            break
                            ;;
                        "2")
                            bash ~/OtoCLI/BashScripts/SetupNetData.sh
                            break
                            ;;
                        "E")
                            echo -e "OtoCli Finalized, Goodbye!\n"
                            Exit
                            ;;
                        *)
                            echo -e "\nPlease, chose a valid option!\n"
                            break
                            ;;
                    esac
                fi
                break
                ;;
            "2")
                clear
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
                echo "┃ Option E ----------------------- Exit OtoCli ┃"
                echo "┃----------------------------------------------┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

                read -p "Option: " userSelectedOption

                read -p "Your Selected Option is: $userSelectedOption, Thats Correct? (y/n): " userConfirmation

                if [ $userConfirmation == "y" ]; then
                    cd ~/ServerData
                    case $userSelectedOption in

                        "1")
                            bash ~/OtoCLI/BashScripts/DeployContainers.sh
                            break
                            ;;
                        "2")
                            bash ~/OtoCLI/BashScripts/RestartAllContainers.sh
                            break
                            ;;
                        "3")
                            bash ~/OtoCLI/BashScripts/BackupContainers.sh
                            break
                            ;;
                        "4")
                            bash ~/OtoCLI/BashScripts/UpdateContainers.sh
                            break
                            ;;
                        "5")
                            bash ~/OtoCLI/BashScripts/BackupAndUpdateContainers.sh
                            break
                            ;;
                        "6")
                            bash ~/OtoCLI/BashScripts/ClearAllContainersAndImages.sh
                            break
                            ;;
                        "7")
                            bash ~/OtoCLI/BashScripts/ExtractSelectiveContainers.sh
                            break
                            ;;
                        "E")
                            echo -e "OtoCli Finalized, Goodbye!\n"
                            Exit
                            ;;
                        *)
                            echo -e "\nPlease, chose a valid option!\n"
                            ;;
                    esac
                fi
                break
                ;;
            "3")
                clear
                echo "┏━━━━━━━━━ Container Stack Operations ━━━━━━━━━┓"
                echo "┃----------------------------------------------┃"
                echo "┃ Option S ----------------------- Start Stack ┃"
                echo "┃ Option K ------------------------ Stop Stack ┃"
                echo "┃ Option R --------------------- Restart Stack ┃"
                echo "┃----------------------------------------------┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
                echo "┏━━━━━━━━━ Container Stack Selections ━━━━━━━━━┓"
                echo "┃----------------------------------------------┃"
                echo "┃ Option 1 --------------------- Core Services ┃"
                echo "┃ Option 2 ---------------- Essential Services ┃"
                echo "┃ Option 3 ------------------ General Services ┃"
                echo "┃ Option 4 ------------ Non Essential Services ┃"
                echo "┃ Option 5 -------------------- Other Services ┃"
                echo "┃ Option 6 ---------------- All Above Services ┃"
                echo "┃----------------------------------------------┃"
                echo "┃ - Utilization: Operation + Option Ex: [S1] - ┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
                echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
                echo "┃----------------------------------------------┃"
                echo "┃ Option E ----------------------- Exit OtoCli ┃"
                echo "┃----------------------------------------------┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

                read -p "Option: " userSelectedOption

                read -p "Your Selected Option is: $userSelectedOption, Thats Correct? (y/n): " userConfirmation

                if [ $userConfirmation == "y" ]; then
                    cd ~/ServerData
                    case $userSelectedOption in

                        "S1")
                            bash ~/ServerData/StartStack.sh -c
                            break
                            ;;
                        "S2")
                            bash ~/ServerData/StartStack.sh -e
                            break
                            ;;
                        "S3")
                            bash ~/ServerData/StartStack.sh -g
                            break
                            ;;
                        "S4")
                            bash ~/ServerData/StartStack.sh -n
                            break
                            ;;
                        "S5")
                            bash ~/ServerData/StartStack.sh -o
                            break
                            ;;
                        "S6")
                            bash ~/ServerData/StartStack.sh -a
                            break
                            ;;
                        "K1")
                            bash ~/OtoCLI/BashScripts/StopStack.sh -c
                            break
                            ;;
                        "K2")
                            bash ~/OtoCLI/BashScripts/StopStack.sh -e
                            break
                            ;;
                        "K3")
                            bash ~/OtoCLI/BashScripts/StopStack.sh -g
                            break
                            ;;
                        "K4")
                            bash ~/OtoCLI/BashScripts/StopStack.sh -n
                            break
                            ;;
                        "K5")
                            bash ~/OtoCLI/BashScripts/StopStack.sh -o
                            break
                            ;;
                        "K6")
                            bash ~/OtoCLI/BashScripts/StopStack.sh -a
                            break
                            ;;
                        "R1")
                            bash ~/ServerData/StartStack.sh -c
                            bash ~/OtoCLI/BashScripts/StopStack.sh -c
                            break
                            ;;
                        "R2")
                            bash ~/ServerData/StartStack.sh -e
                            bash ~/OtoCLI/BashScripts/StopStack.sh -e
                            break
                            ;;
                        "R3")
                            bash ~/ServerData/StartStack.sh -g
                            bash ~/OtoCLI/BashScripts/StopStack.sh -g
                            break
                            ;;
                        "R4")
                            bash ~/ServerData/StartStack.sh -n
                            bash ~/OtoCLI/BashScripts/StopStack.sh -n
                            break
                            ;;
                        "R5")
                            bash ~/ServerData/StartStack.sh -o
                            bash ~/OtoCLI/BashScripts/StopStack.sh -o
                            break
                            ;;
                        "R6")
                            bash ~/ServerData/StartStack.sh -a
                            bash ~/OtoCLI/BashScripts/StopStack.sh -a
                            break
                            ;;
                        "E")
                            echo -e "OtoCli Finalized, Goodbye!\n"
                            Exit
                            ;;
                        *)
                            echo -e "\nPlease, chose a valid option!\n"
                            ;;
                    esac
                fi
                break
                ;;
            "4")
                clear
                echo "┏━━━━━━━━━━━━━━━━━━ Zerotier ━━━━━━━━━━━━━━━━━━┓"
                echo "┃----------------------------------------------┃"
                echo "┃ Option 1 ------------ Setup Zerotier on Host ┃"
                echo "┃ Option 2 ------------- Zerotier Join Network ┃"
                echo "┃----------------------------------------------┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
                echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
                echo "┃----------------------------------------------┃"
                echo "┃ Option E ----------------------- Exit OtoCli ┃"
                echo "┃----------------------------------------------┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

                read -p "Option: " userSelectedOption

                read -p "Your Selected Option is: $userSelectedOption, Thats Correct? (y/n): " userConfirmation

                if [ $userConfirmation == "y" ]; then
                    cd ~/ServerData
                    case $userSelectedOption in

                        "1")
                            read -p "Network Addres to join after installation: " networkAddr
                            curl -s https://install.zerotier.com | sudo bash
                            echo -e "\nJoining $networkAddr\n"
                            sudo zerotier-cli join $networkAddr
                            break
                            ;;
                        "2")
                            read -p "Network Addres to join: " networkAddr
                            echo -e "\nJoining $networkAddr\n"
                            sudo zerotier-cli join $networkAddr
                            break
                            ;;
                        "E")
                            echo -e "OtoCli Finalized, Goodbye!\n"
                            Exit
                            ;;
                        *)
                            echo -e "\nPlease, chose a valid option!\n"
                            ;;
                    esac
                fi
                break
                ;;
            "0")
                clear
                echo "┏━━━━━━━━━━━━━━━━━━━ Extras ━━━━━━━━━━━━━━━━━━━┓"
                echo "┃----------------------------------------------┃"
                echo "┃----------------------------------------------┃"
                echo "┃ Option E ----------------------- Exit OtoCli ┃"
                echo "┃----------------------------------------------┃"
                echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"

                read -p "Option: " userSelectedOption

                read -p "Your Selected Option is: $userSelectedOption, Thats Correct? (y/n): " userConfirmation

                if [ $userConfirmation == "y" ]; then
                    cd ~/ServerData
                    case $userSelectedOption in

                        "E")
                            echo -e "OtoCli Finalized, Goodbye!\n"
                            Exit
                            ;;
                        *)
                            echo -e "\nPlease, chose a valid option!\n"
                            ;;
                    esac
                fi
                break
                ;;
            "E")
                clear
                echo -e "OtoCli Finalized, Goodbye!\n"
                Exit
                ;;
            *)
                clear
                echo -e "\nPlease, chose a valid option!\n"
                ;;

        esac

done
