#!/bin/sh

rpcbind
mount -t nfs 192.168.13.5:/mnt/HD/HD_a2 /usr/share/nas_a2 -o ro,nolock,noatime,tcp,timeo=120

nginx -g "daemon off;"