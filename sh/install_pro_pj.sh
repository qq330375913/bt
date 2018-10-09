#/bin/sh
files="/root/s-hell"
tmpfile="/root/btinstall-tmp" 
source $files/config
{
clear
echo -e "————————————————————————————————————————————————————
	        \033[32mBT一键脚本-安装菜单\033[0m
	           bt.https://qq330375913.github.io
	   Copyright © 2017-2018 wqh227
————————————————————————————————————————————————————"
wget -q -T 5 -O panel.zip $DOWNLOAD_CDN_URL/mb/panel.zip
if [ ! -f "panel.zip" ];then
	echo "获取安装包失败，请稍后安装！"
	exit;
fi
unzip -o panel.zip -d /www/server/ > /dev/null
rm -f panel.zip
}
{
/etc/init.d/bt restart
}
{
echo -e "————————————————————————————————————————————————————
安装完成! 登录宝塔后台，
安装好环境后即可无阻的去安装收费插件！"
}
input_enter=""
read -p "(任意键返回主菜单)" input_enter
if [ "$input_enter"!="" ]; 
then
cd $tmpfile
sh main.sh
fi
