#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export  PATH

main(){
    cp /mnt/c/Users/f1302/Desktop/auto_mykirito_action.sh /home/a/Documant/auto_mykirito_action.sh
    bash /home/a/Documant/auto_mykirito_action.sh
    return 0
}

main
echo $?
exit