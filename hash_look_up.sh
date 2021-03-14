#!/bin/bash
input="/root/Desktop/weak_password_list.txt"
hash_table="/root/Desktop/weak_password_joint.txt"
while IFS= read -r line
do
  #echo $line
  hash=$(echo $line | grep -oP '(?<=\|\s)([a-z0-9]+)')
  name=$(echo $line | grep -oP '([a-zA-Z]+)(?=\s+\|\s)')
  #echo $hash
  
  if grep $hash $hash_table; then
      echo "weak password user: $name "
      
  fi
  
done
