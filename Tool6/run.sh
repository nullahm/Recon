#!/bin/sh

echo "Executing Tool \"Search for Interesting Keywords & Comments\""

printf ""
printf "Provide Full Path to file containing URLs List: "
read file

python "$PWD"/Tool6/keyword_search.py $file