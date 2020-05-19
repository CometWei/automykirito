#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export  PATH

list=0

action(){

    echo
    echo $list號一般行動
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
            -H $'Content-Length: 18' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $'Referer: https://mykirito.com/' \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"action\":\"hunt2\"}' \
            $'https://mykirito.com/api/my-kirito/doaction'
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
            -H $'Content-Length: 19' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $'Referer: https://mykirito.com/' \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"action\":\"train2\"}' \
            $'https://mykirito.com/api/my-kirito/doaction'
            ;;
        "2")
            curl -i -s -k  -X $'POST' \
            -H $'Host: mykirito.com' \
            -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0' \
            -H $'Accept: application/json, text/plain, */*' \
            -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' \
            -H $'Accept-Encoding: gzip, deflate' \
            -H $"token: ${user}" \
            -H $'Content-Type: application/json;charset=utf-8' \
            -H $'Content-Length: 17' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $'Referer: https://mykirito.com/' \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"action\":\"eat2\"}' \
            $'https://mykirito.com/api/my-kirito/doaction'
            ;;
        "3")
            curl -i -s -k  -X $'POST' \
            -H $'Host: mykirito.com' \
            -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0' \
            -H $'Accept: application/json, text/plain, */*' \
            -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' \
            -H $'Accept-Encoding: gzip, deflate' \
            -H $"token: ${user}" \
            -H $'Content-Type: application/json;charset=utf-8' \
            -H $'Content-Length: 18' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $'Referer: https://mykirito.com/' \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"action\":\"girl2\"}' \
            $'https://mykirito.com/api/my-kirito/doaction'
            ;;
        "4")
            curl -i -s -k  -X $'POST' \
            -H $'Host: mykirito.com' \
            -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0' \
            -H $'Accept: application/json, text/plain, */*' \
            -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' \
            -H $'Accept-Encoding: gzip, deflate' \
            -H $"token: ${user}" \
            -H $'Content-Type: application/json;charset=utf-8' \
            -H $'Content-Length: 18' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $'Referer: https://mykirito.com/' \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"action\":\"good2\"}' \
            $'https://mykirito.com/api/my-kirito/doaction'
            ;;
        "5")
            curl -i -s -k  -X $'POST' \
            -H $'Host: mykirito.com' \
            -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0' \
            -H $'Accept: application/json, text/plain, */*' \
            -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' \
            -H $'Accept-Encoding: gzip, deflate' \
            -H $"token: ${user}" \
            -H $'Content-Type: application/json;charset=utf-8' \
            -H $'Content-Length: 17' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $'Referer: https://mykirito.com/' \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"action\":\"sit2\"}' \
            $'https://mykirito.com/api/my-kirito/doaction'
            ;;
        "6")
            curl -i -s -k  -X $'POST' \
            -H $'Host: mykirito.com' \
            -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0' \
            -H $'Accept: application/json, text/plain, */*' \
            -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' \
            -H $'Accept-Encoding: gzip, deflate' \
            -H $"token: ${user}" \
            -H $'Content-Type: application/json;charset=utf-8' \
            -H $'Content-Length: 18' \
            -H $'Origin: https://mykirito.com' \
            -H $'Connection: close' \
            -H $'Referer: https://mykirito.com/' \
            -H $'Cookie: __cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'__cfduid=d25ae3c22ab47a937ee2bf014a8cbff221589887067; G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"action\":\"fish2\"}' \
            $'https://mykirito.com/api/my-kirito/doaction'
            ;;
    esac
    
    list=$(($list+1))

    if [ $list -gt 6 ]; then
        list=0
    fi

    echo
}

practice(){

    echo
    echo $list號修行行動
    echo

    case "$list" in
        "0")
            curl -i -s -k  -X $'POST' \
            -H $'Host: mykirito.com' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0' -H $'Accept: application/json, text/plain, */*' -H $'Accept-Language: zh-TW,zh;q=0.8,en-US;q=0.5,en;q=0.3' -H $'Accept-Encoding: gzip, deflate' -H $'token: nVbJd14wcnzm3.PoyV3tnHhY1620630652630.105926074920423477125' -H $'Content-Type: application/json;charset=utf-8' -H $'Content-Length: 15' -H $'Origin: https://mykirito.com' -H $'Connection: close' -H $'Referer: https://mykirito.com/' -H $'Cookie: G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            -b $'G_ENABLED_IDPS=google; G_AUTHUSER_H=0' \
            --data-binary $'{\"action\":\"1h\"}' \
            $'https://mykirito.com/api/my-kirito/doaction'
            ;;
    esac
}

schedule_action(){
    echo 
    b=''
    i=0
    while [ $i -le 100 ]
    do
        printf "[%-100s] %d%% \r" "$b" "$i";
        sleep 1
        ((i=i+1))
        b+='>'
    done
    echo
    echo
}

schedule_practice(){
    echo 
    b=''
    i=0
    while [ $i -le 100 ]
    do
        printf "[%-100s] %d%% \r" "$b" "$i";
        sleep 36
        ((i=i+1))
        b+='>'
    done
    echo
    echo
}

echo '輸入帳號UID'
read -p '帳號UID:' user
echo '想進行的掛機行動?'
echo '1. 普通行動'
#echo '2. 修行行動'
read -p '輸入編號:' action_read

case "$action_read" in
    "1")
    while :
        do
            action
            schedule_action
        done
        ;;
    "2")
        while :
        do
            practice
            schedule_practice
        done
        ;;
esac

