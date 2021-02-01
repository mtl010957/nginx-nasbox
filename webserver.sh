#!/bin/bash

mount -t nfs 192.168.13.5:/mnt/HD/HD_a2 /usr/share/nginx/html/_data -o ro,noatime,tcp/timeo=120

nginx -g daemon off