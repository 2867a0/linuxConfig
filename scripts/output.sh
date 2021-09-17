#!/bin/bash

# 判断参数个数
if [ $# -ne 1 ]; then
	echo "[*]Usage: ./output.sh test.m3u";
	echo "[*]description: 从test.m3u文件中读取音乐文件路径并导出到test文件夹.\n";
	exit
fi

# 输入文件列表 file.m3u
file=$1;
output=${file%.*}                #截取.m3u之前的字符串

# 输出文件夹不存在，则创建
if [ ! -e $output ]; then
	echo "[!]directory $output not exists. create and go on..";
	mkdir -p $output;
fi

# 复制
for m in `cat $file`; do
	if [ -e ./$output/${m##*/} ];then
		echo "${m##*/} exists, pass.."
	else
		echo "copy ${m##*/}";    #截取文件名
		cp $m ./$output/;
	fi
done;

echo "done!";
