#!/bin/bash

su isucon

repo_dir="/home/isucon/isucon9-qual"

sudo systemctl restart nginx

# TODO: ビルド諸々
cd ${repo_dir}/webapp/go
make all
sudo systemctl restart isucari.golang
