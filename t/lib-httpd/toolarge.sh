#!/bin/sh

printf "Status: 413 Request Entity Too Large\n"
printf "Content-Type: application/x-git-receive-pack-result\n"
printf "\n"

printf "002e\002fatal: pack exceeds maximum allowed size\n"
printf "005b\0010028unpack unpack-objects abnormal exit\n"
printf "002ang refs/tags/will-fail unpacker error\n"
printf "00000000"
