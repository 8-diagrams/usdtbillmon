# usdtbillmon
 trc20 usdt bill monitor

# 先clone下来


git clone https://github.com/8-diagrams/usdtbillmon.git

如果没有装git ，请 yum -y install git 安装

# 添加你的 key

你最终要准备的目录内容是这样的

```
├── docker-compose.yml
├── env.conf
├── key.data
├── mysql_init
│   └── ct_table.sql
└── redis.conf
```


你需要修改  
# 修改 key.data

key.data 文件内容为你的机器人的 key （第一步获取的）

获取方法，到tg去找到 botfather 这个账号 
发起 /newbot 指令，得到如下这种apikey信息

6028440178:xxxxxxxxxxxxxxxxxxxxxxxxx

# 修改 env.conf
修改 url 参数为你的IP或者域名，默认是4001端口
[web]
url = http://IPIPIP:4001


# 运行docker

docker-compose up -d

成功运行

# 添加机器人

/start  开始接收收款监听


修改了一些bug：
 
- 同一秒有问题的bug



