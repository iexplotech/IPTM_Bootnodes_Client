#!/bin/bash
trap "exit" INT
for (( i=1; i<=100; i++ ))
do  
	printf 'Loop IPTM bootnodes: %d\n' "$i"
	echo $(date)
    node iptm_client.js -e
    printf 'Wait 5 seconds before restart IPTM bootnodes\n'
    sleep 5
done
