#!/usr/bin/env bash

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

. "$script_dir/.env"

config_template_path="$script_dir/nginx-conf/nginx-ssl.conf.template"
config_path="$script_dir/nginx-conf/nginx.conf"

cp -f "$config_template_path" "$config_path"

[ -n "$SSL_DOMAIN" ] && sed -i "s/DOMAIN_PLACEHOLDER/$SSL_DOMAIN/g" "$config_path"

docker-compose -f "$script_dir/docker-compose-ssl.yaml" up --build -d
