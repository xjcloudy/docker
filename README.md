## 自用docker容器化配置。仅供开发环境使用

## USAGE
```
    cp docker-compose-example.yml docker-compose.yml
```
修改`docker-compose.yml`文件中相关配置信息，主要是宿主机的挂载地址。
```
   docker-compose up -d
```
# 镜像
 - php7.4.16-fpm(阿里云)
 - php7.4.16-cli(阿里云)
 - mysql
 - nginx
 - redis
