#/bin/sh
links="https://qq330375913.github.io/bt"
files="/root/s-hell"
tmpfile="/root/btinstall-tmp" 
{
cd $tmpfile
rm -rf $files/config
wget -q $links/sh/config -O $files/config
}
{
echo -e "————————————————————————————————————————————————————
CDN加载完成！"
}
{
cd $tmpfile
sh main.sh
}
