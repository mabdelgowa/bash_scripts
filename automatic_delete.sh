#!/bin/bash
docker ps -a > container.txt
cut -d " " -f 1 container.txt > container
sed '1d' container > container2
file=$(cat container2)
for line in $file
do
docker rm "$line"
done
