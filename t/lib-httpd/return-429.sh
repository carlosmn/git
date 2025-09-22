#!/bin/sh

printf "Status: 429 Too Many Requests\n"
printf "Content-Type: application/x-git-upload-pack-advertisement\n"
printf "\n"

printf "001e# service=git-upload-pack\n"
printf "002cERR this is a descriptive error message\n"
