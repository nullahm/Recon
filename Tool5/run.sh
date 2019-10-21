#!/bin/bash

curl -s "http://web.archive.org/cdx/search/cdx?url=$1" | grep -oE http.*://.*/ | sort -u > $1.txt

echo "check out $1.txt"
