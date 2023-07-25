#!bin/bash

#用切换于个人仓库github和公司github仓库间的私钥
#执行完一次后，本地缓存里面会同时存在这两个私钥，后续可以不用再执行切换私钥，
#但若想更改本地的用户名和邮箱，还需要执行来更改

git config --global user.name "$1"
git config --global user.email "$2"

ssh-agent -s #启动秘钥管理器

ssh-add ~/.ssh/$3 #加载私钥

if [ "$1" = "kangwenbin" ]
then
echo "success checkin $1"
elif [ "$1" = "KbSSi" ]
then
ssh -T git@github.com
fi
