# Please execute the following command to build
# docker build -t gitlab_ci_runner this_file_path

# Please execute the following command to start it
# docker run -dit --name gitlab_ci_runner gitlab_ci_runner

# ベースイメージを指定
FROM hazuki3417/ubuntu:latest
# 制作者情報を指定
LABEL maintainer="hazuki3417 <hazuki3417@gmail.com>"

# メイン処理
RUN : "phpをインストール" & \
	apt-get update -y && \
	apt-get install -y \
	php7.2 \
	php7.2-bcmath \
	php7.2-bz2 \
	php7.2-cgi \
	php7.2-cli \
	php7.2-common \
	php7.2-curl \
	php7.2-dba \
	php7.2-dev \
	php7.2-enchant \
	php7.2-fpm \
	php7.2-gd \
	php7.2-gmp \
	php7.2-imap \
	php7.2-interbase \
	php7.2-intl \
	php7.2-json \
	php7.2-ldap \
	php7.2-mbstring \
	php7.2-mysql \
	php7.2-odbc \
	php7.2-opcache \
	php7.2-pgsql \
	php7.2-phpdbg \
	php7.2-pspell \
	php7.2-readline \
	php7.2-recode \
	php7.2-snmp \
	php7.2-soap \
	php7.2-sqlite3 \
	php7.2-sybase \
	php7.2-tidy \
	php7.2-xml \
	php7.2-xmlrpc \
	php7.2-xsl \
	php7.2-mongodb \
	php7.2-zip \
	php-xdebug

RUN : "Gitをインストール" & \
	apt-get install -y git

# ミドルウェアのインストール
# RUN apt-get update && apt-get install -y \
# 	software-properties-common \
# 	&& apt-add-repository -y ppa:ondrej/php

# RUN apt-get update && apt-get install -y \
# 	php7.3

# RUN curl -L git.io/nodebrew | perl - setup \
# 	&& export PATH=$HOME/.nodebrew/current/bin:$PATH \
# 	&& nodebrew install-binary v12.4.0 \
# 	&& nodebrew use v12.4.0

# TODO: 日付の設定を追加（引数での設定は使用できない）
