#!/bin/bash -x

ver=${VERSION:="0.4.0"}
exp_name=pushgateway

NAME=$(basename $(dirname $PWD/Dockerfile))
URL="https://github.com/prometheus/${exp_name}/releases/download/v${ver}/${exp_name}-${ver}.linux-armv7.tar.gz"

wget -N $URL
tar xzf ${exp_name}-${ver}.linux-armv7.tar.gz --strip-components 1 --wildcards "*/pushgateway*"

docker build -t ${NAME}:${ver} -t ${NAME}:latest .

rm pushgateway
