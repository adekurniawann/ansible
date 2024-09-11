#!/bin/bash

services_to_restart=$(docker service ls --format "{{.Name}}" | grep -E 'ts-storage|ts-prototype' | awk '{print $1}')

for service_name in $services_to_restart; do
    docker service update --force $service_name
done