#!/bin/bash
docker images > container.txt
awk '{print $3}' container.txt > container
sed '1d' container > container2
file=$(cat container2)
for line in $file
do
docker rmi "$line"
done

