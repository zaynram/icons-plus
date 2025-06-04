#!/bin/bash
# check for old packages
all=$(ls | grep [.]vsix | tr "\n" ",")
# info message if none found
if [ -z $all ]; then echo "nothing to clean up."; fi
# remove any that are found
while IFS= read -r -d ',' item; do
  rm $item
  echo "$item deleted."
done <<< "$all"