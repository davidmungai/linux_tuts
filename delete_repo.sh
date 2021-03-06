#!/bin/bash
input="./repos_list_deleting.txt"
while IFS= read -r line
do
 echo "$line"
 curl -X DELETE -H "Authorization: token " "https://api.github.com/repos/$line";
done < "$input"
