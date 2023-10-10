#!/usr/bin/env bash

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

docker-compose -f "$script_dir/docker-compose-ssl.yaml" run certbot renew --dry-run && \
docker-compose -f "$script_dir/docker-compose-ssl.yaml" kill -s SIGHUP webserver
