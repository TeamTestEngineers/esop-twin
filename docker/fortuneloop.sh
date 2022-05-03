#!/bin/bash
trap "exit" SIGINT
#INTERVAL=$1

echo "Configured to geneate new fortune every $INTERVAL seconds"
sudo mkdir -p /var/htdocs
while :
do 
	echo "$(date) Writing fortune to /var/htdocs/index.html"
	/usr/games/fortune > /var/htdocs/index.html
	sleep $INT #$INTERVAL
done

