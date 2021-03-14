#!/bin/bash
input="/usr/share/wordlists/metasploit/password.lst"
output="/root/Desktop/weak_password_hashes.txt"
while IFS= read -r line
do
  echo "$line" | (printf "2bbd2dce-b5ed-40d4-975b-559146e6de32 " & cat) | md5sum | sha256sum >> "$output"
  echo "$line" | (printf "2bbd2dce-b5ed-40d4-975b-559146e6de32 " & cat) | md5sum | sha256sum 
done
paste "$input" "$output" /usr/share/wordlists/metasploit/password.lst >> /root/Desktop/weak_password_joint.txt
