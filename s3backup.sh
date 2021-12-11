#!/bin/bash

for domain in $(cat /home/s3/s3domain.txt)

do

aws s3 cp s3://$domain /home/s3/$domain --recursive

cd /home/s3/

zip  -r $domain-$(date +%d-%m-%Y).zip     $domain/*

aws s3 cp $domain-$(date +%d-%m-%Y).zip  s3://backup

rm -rf $domain

rm -rf $domain-$(date +%d-%m-%Y).zip

done
