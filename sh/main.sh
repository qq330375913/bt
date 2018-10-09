#!/bin/bash
files="/root/s-hell"
tmpfile="/root/btinstall-tmp" 
source $files/config

function Installbasic(){
	cd $tmpfile
	wget -q $DOWNLOAD_CDN_URL/sh/install_basic.sh -O install_basic.sh;sh install_basic.sh
}
function Installpro(){
	cd $tmpfile
	wget -q $DOWNLOAD_CDN_URL/sh/install_pro.sh -O install_pro.sh;sh install_pro.sh
}
function Installpropj(){
	cd $tmpfile
	wget -q $DOWNLOAD_CDN_URL/sh/install_pro_pj.sh -O install_pro_pj.sh;sh install_pro_pj.sh
}
function Installpj(){
	cd $tmpfile
	wget -q $DOWNLOAD_CDN_URL/sh/install_pj.sh -O install_pj.sh;sh install_pj.sh
}
function Install6pj(){
	cd $tmpfile
	wget -q $DOWNLOAD_CDN_URL/sh/install_6pj.sh -O install_6pj.sh;sh install_6pj.sh
}
function Upyum(){
	cd $tmpfile
	rpm -ivh $DOWNLOAD_CDN_URL/config_file/epel-release-latest-6.noarch.rpm
	wget -q $DOWNLOAD_CDN_URL/config_file/Centos-6.repo -O /etc/yum.repos.d/CentOS-Base.repo
	wget -q $DOWNLOAD_CDN_URL/config_file/epel-6.repo -O /etc/yum.repos.d/epel.repo
	yum clean all
	yum makecache
}
function Uninstall(){
	cd $tmpfile
	wget -q $DOWNLOAD_CDN_URL/sh/uninstall.sh -O uninstall.sh;sh uninstall.sh
}
function SetDNS(){
	echo -e "options timeout:1 attempts:1 rotate\nnameserver 8.8.8.8\nnameserver 114.114.114.114" >/etc/resolv.conf;
	echo -e "————————————————————————————————————————————————————
修改成功！"
	input_enter=""
	read -p "(任意键返回主菜单)" input_enter
	if [ "$input_enter"!="" ]; 
	then
	cd $tmpfile
	sh main.sh
	fi
}
function setvhms(){
	wget -q $DOWNLOAD_CDN_URL/sh/vhms.sh -O vhms.sh;sh vhms.sh
}
function Update(){
	cd $tmpfile
	wget -q $DOWNLOAD_CDN_URL/sh/cdn.sh -O cdn.sh
	wget -q $DOWNLOAD_CDN_URL/sh/main.sh -O main.sh
	cp -f main.sh /usr/bin/btinstall
	echo -e "————————————————————————————————————————————————————
更新成功！"
	sh main.sh
}
function pass(){
	cd $tmpfile
	wget -q $DOWNLOAD_CDN_URL/sh/pass.sh -O pass.sh;sh pass.sh
}
function btpass(){
	bt default
	input_enter=""
	read -p "(任意键返回主菜单)" input_enter
	if [ "$input_enter"!="" ]; 
	then
	cd $tmpfile
	sh main.sh
	fi
}
function Upcdn(){
	cd $tmpfile
	sh cdn.sh
}
function Install(){
clear
echo -e "————————————————————————————————————————————————————
	        \033[32mBT一键脚本-安装菜单\033[0m
	           bt.https://qq330375913.github.io
	   Copyright © 2017-2018 千梦
————————————————————————————————————————————————————
1. BT 5.9 免费版
2. BT 5.9 商业体验版（推荐，无人值守安装）
3. BT 5.9 商业体验版（BT面板已经安装）
4. BT 5.9 收费插件免费体验（BT面板已经安装）
5. BT 6.0 BETA 收费插件免费体验（BT面板已经安装）
0. 返回上一级菜单"
read -p "请输入序号并回车：" num
case "$num" in
[1] ) (Installbasic);;
[2] ) (Installpro);;
[3] ) (Installpropj);;
[4] ) (Installpj);;
[5] ) (Install6pj);;
[0] ) (Init);;
*) (Install);;
esac
}
function Init(){
clear
echo -e "————————————————————————————————————————————————————
	         \033[32mBT一键脚本-主菜单\033[0m            V：1.0
	           bt.https://qq330375913.github.io
	   Copyright © 2017-2018 千梦
————————————————————————————————————————————————————
     请使用CentOS系统安装 BT插件版 一键安装脚本，
     付费插件免费体验，面板是BT官方免费、专业版。
     本脚本只供交流学习，禁止商用和任何违法使用。
     保证无任何私加后门！商用请自觉官网缴费购买！
————————————————————————————————————————————————————
1. 安装BT面板或收费插件免费体验（推荐）
2. 查看默认安装账号密码
3. 重置BT面板密码
4. 完全卸载BT
5. 更新当前脚本CDN源
6. 修复系统DNS设置（8.8.8.8和114.114.114.114）
u. 更新当前脚本
0. 退出安装（再次打开请输入 sh btinstall 命令）"
#6. 更新系统Yum源
#[6] ) (Upyum);;
read -p "请输入序号并回车：" num
case "$num" in
[1] ) (Install);;
[2] ) (btpass);;
[3] ) (pass);;
[4] ) (Uninstall);;
[5] ) (Upcdn);;
[6] ) (SetDNS);;
[u] ) (Update);;
[0] ) (clear;exit);;
*) (Init);;
esac
}

Init
