FROM php:5.6-fpm

#换一下源
RUN sed -i "s/deb.debian.org/mirrors.163.com/g" /etc/apt/sources.list && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim unzip  git 

# 安装依赖
RUN apt-get install -y libcurl4-gnutls-dev libpng-dev libmcrypt-dev libxml2-dev libssl-dev pkg-config
# 安装扩展
RUN docker-php-ext-install bcmath pdo_mysql mbstring zip mcrypt xml gd curl mysqli
# 安装其他扩展
#redis
RUN cd ~ && \
    curl https://codeload.github.com/phpredis/phpredis/zip/3.1.3 -o redis.zip && \
    unzip redis.zip && \
    cd phpredis-3.1.3 && \
    phpize && \
    ./configure && make && make install && cd .. && rm -drf phpredis-3.1.3 redis.zip && \
    docker-php-ext-enable redis
# 安装mongo
RUN pecl install mongodb && docker-php-ext-enable mongodb 
# 安装composer
ADD https://getcomposer.org/download/1.6.3/composer.phar /usr/local/bin/composer 
RUN chmod +x /usr/local/bin/composer

# 配置
RUN echo "memory_limit=-1" >> /usr/local/etc/php/conf.d/php.ini




