#/bin/sh
links="https://qq330375913.github.io/bt"
files="/root/s-hell"
tmpfile="/root/btinstall-tmp" 
{
wget -q $links/sh/cdn.sh -O cdn.sh
wget -q $links/sh/main.sh -O main.sh
cp -f main.sh /usr/bin/btinstall
chmod 777 /usr/bin/btinstall
cd
rm -rf /root/start
}
{
echo -e "————————————————————————————————————————————————————
一键脚本加载完成！"
}
{
cd $tmpfile
sh cdn.sh
}
