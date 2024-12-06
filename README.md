# 部署方案

## Docker Compose

需要在宿主机上执行 top 程序监控宿主机资源情况, 这个程序不该在容器中执行, 所以这里用脚本配合 docker compose 实现:
- `start.sh`
- `shutdown.sh` 

## k8s

```shell
helm install matrixdl ./matrixdl-chart
```

## 持久化

目前简单地使用 `./data` 目录是用来放 OpenGauss 镜像里弄出来的数据库数据，这个目录内容需要预先准备，详情参考 [xy3的方案](https://github.com/xy3xy3/openeuler-openGauss-docker-forstudy)。