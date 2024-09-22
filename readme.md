## 快速使用

一键脚本安装 sing-box 并自动配置 socks5、vless+ws、hysteria2 节点：

```bash
bash <(curl -s https://raw.githubusercontent.com/swirl9553/singbox-for-serv00/main/singbox/singbox_install.sh)
#bash <(curl -s https://raw.githubusercontent.com/swirl9553/singbox-for-serv00/refs/heads/main/singbox/singbox_install.sh)
```

> 说明：
>
> - 默认安装目录：`$HOME/.sb`
> - 脚本安装时根据交互提示，输入各种节点主要配置信息即可，安装脚本会默认自动启动 sing-box，并自动添加重启任务到 crontab 中。脚本安装好后会自动生成节点链接到 `$HOME/.sb/links.txt` 文件中。
> - 如需修改节点配置，只需修改 sing-box 配置文件（`$HOME/.sb/config.json`）然后重启即可（重启  sing-box 命令：`cd $HOME/.sb; ./stop.sh && ./start-nohup.sh`），注意：手动修改配置文件重启，不会自动更新 `links.txt` 节点链接文件。

一键脚本卸载 sing-box 和相关配置：

```bash
bash <(curl -s https://raw.githubusercontent.com/swirl9553/singbox-for-serv00/main/singbox/singbox_uninstall.sh)
```


一键脚本安装 nezha-agent 并自动配置：

```bash
bash <(curl -s https://raw.githubusercontent.com/swirl9553/singbox-for-serv00/main/nezha/nezha_install.sh)
#bash <(curl -s https://raw.githubusercontent.com/swirl9553/singbox-for-serv00/refs/heads/main/nezha/nezha_install.sh)
```

默认安装目录：`$HOME/.nezha-agent`

一键脚本卸载 nezha-agent 和相关配置：

```bash
bash <(curl -s https://raw.githubusercontent.com/swirl9553/singbox-for-serv00/main/nezha/nezha_uninstall.sh)
```




## Github Actions 保活

Settings >> Secrets and variables >> Actions >> Repository secrets >> New repository secret
- Name（变量名）：`ACCOUNTS_JSON`
- Secret（秘钥内容）如下：

    ```json
    [
      { "username": "xts001", "password": "7HEt(xeRxttdvgB^nCU6", "panel": "panel4.serv00.com", "ssh": "s4.serv00.com" },
      { "username": "xts002", "password": "4))@cRP%Ht8AryHlh^#", "panel": "panel7.serv00.com", "ssh": "s7.serv00.com" },
      { "username": "xts003", "password": "%Mg^dDMo6yIY$dZmxWNy", "panel": "panel.ct8.pl", "ssh": "s1.ct8.pl" }
    ]
    ```
    
    > 说明：请根据自己 Serv00 账号情况对 Secret 进行修改。以上秘钥内容是多个账号的情况，单个账号只需保留一个 json 对象即可

更详细操作参考：https://blog.cmliussss.com/p/Serv00-Socks5/

## 参考

- https://github.com/cmliu/socks5-for-serv00
- https://github.com/gshtwy/socks5-hysteria2-for-Serv00-CT8