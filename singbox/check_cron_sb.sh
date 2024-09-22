#!/bin/bash
SB_DIR="$HOME/.sb"
#重命名 sing-box 程序名称
SB_EXE="sb-web"
CRON_SB="nohup ${SB_DIR}/start.sh >/dev/null 2>&1 &"
echo "检查并添加 crontab 任务"
if [ -e "${SB_DIR}/start.sh" ]; then
    echo "添加 sing-box 的 crontab 重启任务"
    (crontab -l | grep -F "@reboot pkill -kill -u $(whoami) && ${CRON_SB}") || (
        crontab -l
        echo "@reboot pkill -kill -u $(whoami) && ${CRON_SB}"
    ) | crontab -
    (crontab -l | grep -F "* * pgrep -x \"$SB_EXE\" > /dev/null || ${CRON_SB}") || (
        crontab -l
        echo "*/12 * * * * pgrep -x \"$SB_EXE\" > /dev/null || ${CRON_SB}"
    ) | crontab -
fi
