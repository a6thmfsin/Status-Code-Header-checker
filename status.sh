#!/bin/bash

while read line; do
    url=$line

    status_code=$(curl -I $url | head -n 1 | cut -d' ' -f2)

    echo "$url: $status_code" >> status.txt
done < domains.txt
