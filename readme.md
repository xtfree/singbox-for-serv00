## 快速使用

一键脚本安装：

```bash
bash <(curl -s https://raw.githubusercontent.com/swirl9553/singbox-for-serv00/main/singbox/singbox_install.sh)
#bash <(curl -s https://raw.githubusercontent.com/swirl9553/singbox-for-serv00/refs/heads/main/singbox/singbox_install.sh)
```

## Github Actions 保活

Settings >> Secrets and variables >> Actions >> Repository secrets >> New repository secret
- Name（变量名）：`ACCOUNTS_JSON`
- Secret（秘钥内容）如下：

    ```json
    [
    {"username": "cmliusss", "password": "7HEt(xeRxttdvgB^nCU6", "panel": "panel4.serv00.com", "ssh": "s4.serv00.com"},
    {"username": "cmliussss2018", "password": "4))@cRP%HtN8AryHlh^#", "panel": "panel7.serv00.com", "ssh": "s7.serv00.com"},
    {"username": "4r885wvl", "password": "%Mg^dDMo6yIY$dZmxWNy", "panel": "panel.ct8.pl", "ssh": "s1.ct8.pl"}
    ]
    ```

    > 说明：请根据自己 Serv00 账号情况对 Secret 进行修改。以上秘钥内容是多个账号的情况，单个账号只需保留一个 json 对象即可

更详细操作参考：https://blog.cmliussss.com/p/Serv00-Socks5/

## 参考

- https://github.com/cmliu/socks5-for-serv00
- https://github.com/gshtwy/socks5-hysteria2-for-Serv00-CT8