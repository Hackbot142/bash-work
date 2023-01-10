#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: rename.sh search_string replacement_string"
    exit 1
fi

search_string=$1
replacement_string=$2

for file in *; do
    new_name=`echo $file | sed "s/$search_string/$replacement_string/g"`
    mv "$file" "$new_name"
done

echo "Renaming complete!"
