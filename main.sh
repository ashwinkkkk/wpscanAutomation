#!/bin/bash
urlFile="./urlList.txt"
while IFS= read -r line
do
    touch `date +%m_%d`.txt
    wpscan --url $line >> `date +%m_%d`.txt
done < $urlFile

input="./emailList.txt"
while IFS= read -r line
do
    sendmail $line <`date +%m_%d`.txt

done < $input
