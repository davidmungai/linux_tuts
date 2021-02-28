#!/bin/bash
input="./repos_list_deleting.txt"
while IFS= read -r line
do
 echo "$line"
 curl -X DELETE -H "Authorization: token 9a7f9caf1790c26b4122dfe0c614dcad01dc5dd1" "https://api.github.com/repos/$line";
done < "$input"
