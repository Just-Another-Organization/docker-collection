# SonarQube docker

## Issues

SonarQube uses ElasticSearch and this can generate some issues:

- Volumes in docker cannot be "in-directory" due to permissions error;
- You need to increase the "vm.max_map_count" parameter in linux-like systems with the following command:

``` shell
sysctl -w vm.max_map_count=262144
# The command is temporary. To make it persistent run:
echo "vm.max_map_count=262144" >> /etc/sysctl.conf
```
