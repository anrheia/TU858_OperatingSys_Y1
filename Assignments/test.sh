#!/bin/bash

while true; do
    clear
    echo "  * Bash Commands *  "
    echo "1. List files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"
    echo ""
    read -p "Enter your choice: " choice
    echo ""
    case $choice in
        1)
            ls
            read -p "Press Enter to continue"
            ;;
        2)
            df -h
            read -p "Press Enter to continue"
            ;;
        3)
            echo $PATH
            read -p "Press Enter to continue"
            ;;
        4)
            set -o history
            cat $HISTFILE
            echo $HISTFILE
            history
            read -p "Press Enter to continue"
            ;;
        5)
            read -p "Enter directory name to backup: " dirname
            mkdir -p BackupFolder
            cp -R $dirname BackupFolder/
            ls BackupFolder/
            read -p "Press Enter to continue"
            ;;
        6)
            exit
            ;;
        *)
            read -p "Invalid option. Press Enter to continue"
            ;;
    esac
done
