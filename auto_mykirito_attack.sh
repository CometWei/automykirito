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
            -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0' \
            -H $'Accept: application/json, text/plain, */*' \
            -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' \
            -H $'Accept-Encoding: gzip, deflate' \
            -H $'token: 5ec20f7fe64003000a614820.D6gLTIXi3Y1621433153491.105926074920423477125' \
            -H $'Content-Type: application/json;charset=utf-8' \
            -H $'Content-Length: 69' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $'Referer: https://mykirito.com/profile/5ec0d3d545eadc000a0d72bc' \
            -H $'Cookie: __cfduid=d41084fb786e67349cb642c917c54b29b1589897113; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d41084fb786e67349cb642c917c54b29b1589897113; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"type\":0,\"opponentUID\":\"5ec0d3d545eadc000a0d72bc\",\"shout\":\"\",\"lv\":9}' \
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
            -H $'Cookie: __cfduid=ddedfc675485a5bf044726373853f27011589797807; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=ddedfc675485a5bf044726373853f27011589797807; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
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