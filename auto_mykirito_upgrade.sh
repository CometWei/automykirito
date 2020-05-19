#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export  PATH

main(){
    cp /mnt/d/TestCode/shellscript/automykirito/auto_mykirito_action.sh /home/a/Documant/automykirito/auto_mykirito_action.sh
    cp /mnt/d/TestCode/shellscript/automykirito/auto_mykirito_attack.sh /home/a/Documant/automykirito/auto_mykirito_attack.sh
    echo 'file upgrade done'
    return 0
}

main
echo $?
exit