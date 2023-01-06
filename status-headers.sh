#!/bin/bash

while read line; do
    url=$line

    status_code=$(curl -I $url | head -n 1 | cut -d' ' -f2)
    headers=$(curl -I $url)

    echo "$url: $status_code" >> status-headers.txt
    echo "$headers" >> status-headers.txt
done < domains.txt
