#!/bin/bash

su isucon

repo_dir="/home/isucon/isucon9-qual"

# nginx
cd /etc/nginx/conf.d
sudo rm /etc/nginx/conf.d/app.conf
sudo ln -s ${repo_dir}/infra-conf/nginx/conf.d/app-0.conf app.conf
