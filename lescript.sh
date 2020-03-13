#!/bin/bash

name=($find /tmp/out -name '*.gz')

if [ -e /tmp/out/lock ]
    then

    exit 22

else
  touch /tmp/out/lock
fi
  
if [ -f /tmp/in/ ]
  then
  echo error 25
fi

for fich in /tmp/in/*
do
if [ -f $fich ]
    then
    echo traitement de $fich >> /tmp/out/log

    gzip /tmp/out/$fich

    mv $fich /tmp/out/ 

fi
  
done
echo $name >> /tmp/out/log
rm /tmp/out/lock
 
 
