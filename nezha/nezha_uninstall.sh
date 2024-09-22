#!/bin/bash
#sing-box 安装路径
NEZHA_DIR="$HOME/.nezha-agent"
#程序名称
NEZHA_EXE="nezha-agent"

if [ -d "$NEZHA_DIR" ]; then
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
$NEZHA_DIR/stop.sh
#删除旧配置
rm -rf $NEZHA_DIR
#删除相关定时任务（如果之前安装过）
crontab -l | grep -v $NEZHA_EXE | crontab -
