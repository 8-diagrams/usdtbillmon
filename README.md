# usdtbillmon
 trc20 usdt bill monitor

# 先clone下来


git clone https://github.com/8-diagrams/usdtbillmon.git

如果没有装git ，请 yum -y install git 安装

# 添加你的 key

你最终要准备的目录内容是这样的

`

├── docker-compose.yml
├── env.conf
├── key.data
├── mysql_init
│   └── ct_table.sql
└── redis.conf

`

你需要修改  

key.data 文件内容为你的机器人的 key （第一步获取的）

# 运行docker

docker-compose up -d

成功运行

# 添加机器人

/start  开始接收收款监听

