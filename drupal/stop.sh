#!/usr/bin/env bash

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

if [[ "$1" = "--purge" ]]; then
    read -p "This will destroy all the data. Are you sure? [y/N] " -n 1 -r
    echo ""
    echo "Stopping and purging data..."
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      docker-compose -f "$script_dir/docker-compose.yaml" down -v
      sudo rm -rf certbot-etc/ db-data/ drupal-data/
    fi
else
    docker-compose -f "$script_dir/docker-compose.yaml" down
fi
