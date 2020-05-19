#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export  PATH

attackuserlevel=0
attackuser=0
list=0

attack(){

    echo
    echo $list號攻擊行動
    echo

    case "$list" in
        "0")
            curl -i -s -k  -X $'POST' \
            -H $'Host: mykirito.com' \
            -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0' \
            -H $'Accept: application/json, text/plain, */*' \
            -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' \
            -H $'Accept-Encoding: gzip, deflate' \
            -H $"token: ${user}" \
            -H $'Content-Type: application/json;charset=utf-8' \
            -H $'Content-Length: 69' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $"Referer: https://mykirito.com/profile/\"${attackuser}\"" \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $"{\"type\":0,\"opponentUID\":\"${attackuser}\",\"shout\":\"\",\"lv\":${attackuserlevel}}" \
            $'https://mykirito.com/api/challenge'
            ;;
        "1")
            curl -i -s -k  -X $'POST' \
            -H $'Host: mykirito.com' \
            -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0' \
            -H $'Accept: application/json, text/plain, */*' \
            -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' \
            -H $'Accept-Encoding: gzip, deflate' \
            -H $"token: ${user}" \
            -H $'Content-Type: application/json;charset=utf-8' \
            -H $'Content-Length: 69' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $"Referer: https://mykirito.com/profile/\"${attackuser}\"" \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $"{\"type\":1,\"opponentUID\":\"${attackuser}\",\"shout\":\"\",\"lv\":${attackuserlevel}}" \
            $'https://mykirito.com/api/challenge'
            ;;
    esac
    
    #list=$(($list+1))

    if [ $list -gt 1 ]; then
        list=0
    fi

}


schedule(){
    echo 
    b=''
    i=0
    while [ $i -le 100 ]
    do
        printf "[%-100s] %d%% \r" "$b" "$i";
        sleep 4
        ((i=i+1))
        b+='>'
    done
    echo
    echo
}



echo "輸入帳號UID"
read -p "帳號UID:" user
echo "輸入攻擊對象UID"
read -p "攻擊對象UID:" attackuser
echo "請輸入攻擊對象等級"
read -p "攻擊對象等級:" attackuserlevel

while :
do
    attack
    schedule
done