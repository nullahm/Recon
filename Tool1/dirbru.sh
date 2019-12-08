#!/bin/bash
t=$1 #target
file='./list.lst' #can be your custom list
echo "Target: ${t}"
while IFS= read -r line; do
    url="${t}/$line"
    response=$(curl --write-out %{http_code} --silent --output /dev/null $url)
    echo "${url} => ${response}"
done < "$file"
