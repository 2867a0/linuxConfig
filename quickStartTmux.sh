#!/bin/bash

#判断是否拥有该会话，如果有则直接进入
tmux has-session -t working1

if [ $? != 0 ]
then

	#创建一个working1会话，第一个窗口名称为a
	tmux new-session -s working1 -n a -d

	#上下分裂窗口
	tmux split-window -v -t working1

	#在下层窗口中水平分裂
	tmux split-window -h -t working1:0.1

	#最上层面板进入信息收集目录
	#tmux send-keys -t working1:0.0 'cd ~/Desktop/InformationSchema/' C-m

	#将最后一个面板设置成时间
	#tmux send-keys -t working:0.2 C-a 't'

	#最后再新建一个wondow
	tmux new-window -n b -t working1

	#进入tmux会话
	tmux select-window -t working1:0
fi
tmux attach -t working1
