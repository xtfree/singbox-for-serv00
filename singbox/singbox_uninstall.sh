#!/bin/bash
#sing-box 安装路径
SB_DIR="$HOME/.sb"
#重命名 sing-box 程序名称
SB_EXE="sb-web"

if [ -d "$SB_DIR" ]; then
    read -p "是否确定卸载？（Y/N 回车N）: " choice
    choice=${choice^^} # 转换为大写
    if [ "$choice" == "Y" ]; then
        echo "卸载..."
        # 在这里添加重置数据的代码
    else
        echo "已取消卸载..."
        exit 1
    fi
fi
#停止程序运行
$SB_DIR/stop.sh
#删除旧配置
rm -rf $SB_DIR
#删除相关定时任务（如果之前安装过）
crontab -l | grep -v $SB_EXE | crontab -
