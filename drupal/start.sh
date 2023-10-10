#!/usr/bin/env bash

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

config_template_path="$script_dir/nginx-conf/nginx.conf.template"
config_path="$script_dir/nginx-conf/nginx.conf"

cp -f "$config_template_path" "$config_path"

docker-compose -f "$script_dir/docker-compose.yaml" up --build -d
