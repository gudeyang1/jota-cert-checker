#!/bin/bash

check(){
while :

do
	./jota-cert-checker.sh -f sitelist -o html
	mv certs_check.html /usr/share/nginx/html/index.html
	sleep 3600

done
}


set -m

check &
nginx -g "daemon off;"
