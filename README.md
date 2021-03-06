# Docker for MySQL Demo

这是一个基于Docker的简化版MySQL数据初始化，仅适用于实验环境下快速搭建并初始化MySQL。

## 主要功能
1. 从DockerHub上获取MySQL镜像
2. 自动创建数据库，并初始化数据表

## 一、安装Docker 

**Windows的Docker配置和安装方法请自行百度
### Ubuntu
```bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
```

### CentOS
```bash
sudo yum -y install docker-ce
```

### MacOS
```bash!
brew install docker
```

## 二、设置国内docker-hub源 (Optional)
```bash
# 创建位置文件夹（如果已存在可以不做此部）
sudo mkdir -p /etc/docker
# 创建daemon配置文件
sudo vim /etc/docker/daemon.json
# 在daemon.json中国内源地址
{
"registry-mirrors": [
  "https://docker.mirrors.ustc.edu.cn",
  "http://hub-mirror.c.163.com"
  ]
}
# 重新加载daemon文件
sudo systemctl daemon-reload
# 启动docker
sudo systemctl start docker
```

## 三、设置docker的sudo权限（Optional）
```bash
# 创建docker组
sudo groupadd docker
# 将当前用户加入docker组
sudo gpasswd -a ${USER} docker
# 重启docker服务
sudo service docker restart
# 刷新docker成员
newgrp - docker
```

## 四、安装Docker-compose
```bash
# 安装
curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# 设置权限
sudo chmod +x /usr/local/bin/docker-compose
# 查看版本
docker-compose -v
```

## 五、搭建数据库服务

### 启动服务
```bash
cd <docker-compose.yml所在文件夹>
docker-compose up -d
# 如果需要关闭服务则使用命令
docker-compose down
```

### 测试
```bash
docker ps # 查看container id
docker exec -it <container id> /bin/bash # 进入 container
mysql -u nathan -p # 登录mysql下的测试数据库，密码是testpwd
```

