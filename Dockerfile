# Please execute the following command to build
# docker build -t gitlab_ci_runner this_file_path

# Please execute the following command to start it
# docker run -dit --name gitlab_ci_runner gitlab_ci_runner

# ベースイメージを指定
FROM hazuki3417/ubuntu:latest
# 制作者情報を指定
LABEL maintainer="hazuki3417 <hazuki3417@gmail.com>"

# メイン処理

# ミドルウェアのインストール
RUN apt-get update && apt-get install -y \
	software-properties-common \
	&& apt-add-repository -y ppa:ondrej/php

RUN apt-get update && apt-get install -y \
	php7.3

RUN curl -L git.io/nodebrew | perl - setup \
	&& export PATH=$HOME/.nodebrew/current/bin:$PATH \
	&& nodebrew install-binary v12.4.0 \
	&& nodebrew use v12.4.0

# TODO: 日付の設定を追加（引数での設定は使用できない）
