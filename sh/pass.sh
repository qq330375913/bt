#/bin/sh
files="/root/s-hell"
tmpfile="/root/btinstall-tmp" 
source $files/config
clear
echo -e "————————————————————————————————————————————————————
	        \033[32mBT一键脚本-密码菜单\033[0m
	           bt.wqh227.win
	   Copyright © 2017-2018 wqh227
————————————————————————————————————————————————————"
{
echo -e "面板端口"
cat /www/server/panel/data/port.pl

echo -e "宝塔账号"
cd /www/server/panel && python tools.pyc panel admin

echo -e "宝塔密码
admin

提示：密码暂时强制修改为admin
      请尽快登录宝塔后台修改密码
      并且请牢记你修改以后密码！"
}

input_enter=""
read -p "(任意键返回主菜单)" input_enter
if [ "$input_enter"!="" ]; 
then
cd $tmpfile
sh main.sh
fi
