# Docker_PX4

## 1. 简介

本项目为基于Docker的PX4开发环境，用于快速搭建PX4开发环境，方便开发人员快速上手。

## 2. 环境要求

- 使用鱼香ROS安装docker
```bash
wget http://fishros.com/install -O fishros && . fishros
```

## 3. 使用方法

### 3.1 克隆项目

```bash
git clone https://github.com/yourname/Docker_PX4.git
```

### 3.2 构建镜像

```bash
docker pull crpi-uhiltw8kres50c5x.cn-shanghai.personal.cr.aliyuncs.com/uav_suyu/px4-mavros:v0.3.0

make build
```

### 3.3 在容器中运行镜像

```bash
make start
```

## NOTE
- 目前更新到v0.3.0版本，作为运行包含px4环境的ros_noetics的容器
- 使用时请把ros工程挂载到容器内部
