#!/bin/bash

su isucon

repo_dir="/home/isucon/isucon9-qual"

# git pull
cd ${repo_dir}
git pull

# nginx
cd /etc/nginx
sudo rm /etc/nginx/nginx.conf
sudo ln -s ${repo_dir}/infra-conf/nginx/nginx.conf nginx.conf
