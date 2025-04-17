#!/bin/bash

# user default input
export INPUT=0

while [ $INPUT != 6 ]; do
  clear
  echo ""
  echo ""
  echo "1 - Network Ping ([92mPing Your Network As Much As You Want[0m)"
  echo ""
  echo "2 - Speed Test ([92mYour Internet Speed by Speedtest.net[0m)"
  echo ""
  echo "3 - Set DNS Manually ([92mChange Your DNS [Sudo][0m)"
  echo ""
  echo "4 - Install/Remove App ([92mInstall or Remove Apps Based On APT [Sudo][0m)"
  echo ""
  echo "5 - Exit"
  echo ""
  echo "[107m[30m*Notice: Blank entries will terminate the process.[0m"
  echo ""
  echo ""
  read -p "Enter (1~5): " INPUT

  if [ "$INPUT" -eq 1 ]; then

    echo ""
    read -p "Please enter your IP or Domain address: " IP_ADDRESS
    echo ""
    read -p "How many times do you want to Ping? " HOW_MANY_TIMES
    echo ""
    ping -c $HOW_MANY_TIMES $IP_ADDRESS
    echo ""
    read -p "Enter to exit"
    

  elif [ "$INPUT" -eq 2 ]; then

    ./assets/libraries/speedtest
    echo ""
    read -p "Enter to exit"


  elif [ "$INPUT" -eq 3 ]; then

    echo $INPUT


  elif [ "$INPUT" -eq 4 ]; then

    echo ""
    read -p "Install or Remove (type i or r): " INSTALL_REMOVE

    if [ "$INSTALL_REMOVE" == "i" ]; then

      echo ""
      read -p "Enter you app name in order to install: " APPNAME
      echo ""
      if [ "$APPNAME" == "" ]; then
        echo "Invalid Entry. Try Again."
      else
        sudo apt install $APPNAME
      fi

    elif [ "$INSTALL_REMOVE" == "r" ]; then

      echo ""
      read -p "Enter you app name in order to remove: " APPNAME
      echo ""
      if [ "$APPNAME" == "" ]; then
        echo "Invalid Entry. Try Again."
      else
        sudo apt install $APPNAME
      fi

    else

      echo ""
      echo "Invalid Entry. Try Again."

    fi 
    
    echo ""
    read -p "Enter to exit"

  fi

done

# read -p "Enter to exit"