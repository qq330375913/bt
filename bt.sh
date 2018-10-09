#!/bin/bash
links="http://jb.suparo.cn"
files="/root/s-hell"
tmpfile="/root/btinstall-tmp"
cd
rm -rf $tmpfile
rm -rf btinstall*

if [ ! -x "$files" ];
then
mkdir $files;
chmod 755 $files;
fi

if [ ! -x "$tmpfile" ];
then
mkdir $tmpfile;
chmod 755 $tmpfile;
fi

cd $tmpfile
wget -q $links/sh/loading.sh -O loading.sh
sh loading.sh