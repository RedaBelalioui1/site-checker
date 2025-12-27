#!/bin/bash

target=$1

if [ -z "$1" ]; then
        echo "Please provide a web site to check."
        echo "Usage: ./check_site.sh <domain>"
        exit 1
fi

echo "Checking $target..."

if curl -I -L "$target" 2>&1 | grep -q "200 OK"; then
        echo "The site is UP!"
else
        echo "The site is DOWN!"
	exit 1
fi
