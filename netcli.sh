#!/bin/bash
#Network CLI


function listwifi {
    clear
    nmcli dev wifi
}


function wifichipset {
    clear
    lspci | grep -i wireless
}

function netmanager {
    clear
    nmcli connection show
}

function speedt {
    clear
    speedtest
}

function installspeedt {
    clear
    sudo apt install speedtest-cli

}

function restrict {
    clear
    sudo nano /etc/hosts 
}

function pingcmd {
    clear
    echo "Type your address to ping: " 
    read address
    ping $address
    echo "CTRL+C to stop"
}


function menu {
    clear
    echo
    echo -e "\t\t\tNetwork CLI\n"
    echo -e "\t1. Lists available Wi-Fi (speed, security, signal, and more)"
    echo -e "\t2. Wireless card chipset information"
    echo -e "\t3. See all connection Network Manager"
    echo -e "\t4. Show >>> Speed Test"
    echo -e "\t5. Install SpeedTest"
    echo -e "\t6. Restrict webpage address"
    echo -e "\t7. Ping address"

    echo -e "\n\t0. Cose Program\n\n"
    echo -en "\t\tEnter option: "
    read -n 1 option
}

while [ 1 ]
do
    menu
    case $option in
    0)
        break ;;
    1)
        listwifi ;;
    2)
        wifichipset ;;
    3)
        netmanager ;;
    4)
        speedt ;;
    5)
        installspeedt ;;
    6)
        restrict ;;
    7)
        pingcmd ;;
    *)
        clear
        echo "Sorry, wrong selection" ;;
    esac
    echo -en "\n\n\t\t\tPress any key to continue..."
    read -n 1 line
done
clear
