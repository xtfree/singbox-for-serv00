#!/bin/bash
NEZHA_DIR="$HOME/.nezha-agent"
CRON_NEZHA="nohup ${NEZHA_DIR}/start.sh >/dev/null 2>&1 &"
echo "检查并添加 crontab 任务"
if [ -e "${NEZHA_DIR}/start.sh" ]; then
    echo "添加 nezha 的 crontab 重启任务"
    (crontab -l | grep -F "@reboot pkill -kill -u $(whoami) && ${CRON_NEZHA}") || (
        crontab -l
        echo "@reboot pkill -kill -u $(whoami) && ${CRON_NEZHA}"
    ) | crontab -
    (crontab -l | grep -F "* * pgrep -x \"nezha-agent\" > /dev/null || ${CRON_NEZHA}") || (
        crontab -l
        echo "*/12 * * * * pgrep -x \"nezha-agent\" > /dev/null || ${CRON_NEZHA}"
    ) | crontab -
fi
