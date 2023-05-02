sudo cp menu.sh /usr/local/bin/
sudo chmod u+x /usr/local/bin/menu.sh

title="* Bash Commands *"

while true; do
    echo "$title"
    echo "1) List Files"
    echo "2) Show free disk space"
    echo "3) Show current path"
    echo "4) Display command history"
    echo "5) Backup files"
    echo "6) Exit"

    read -p "Enter your option: " OPTION

    case $OPTION in
        "1")
            echo ""
            ls
            echo ""
            ;;
        "2")
            echo ""
            df -h
            echo ""
            ;;
        "3")
            echo ""
            echo $PATH
            echo ""
            ;;
        "4")
            echo ""
            history
            echo ""
            ;;
        "5")
            echo ""
            read -p "Enter Directory name: " DRNAME
            mkdir -p backupFolder
            cp -r $DRNAME backupFolder/
            cp menu.sh backupFolder/$DRNAME
            ls backupFolder/$DRNAME
            echo ""
            ;;
        "6")
            echo "Program has terminated"
            break;;
        *)
            echo "Invalid Option";;
    esac
done   

