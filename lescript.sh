#!/bin/bash

echo "hello word"

name=($find /tmp/out -name '*.gz')

if [ -e /tmp/out/lock ]
    then

    exit 22

else
  touch /tmp/out/lock
fi
  
if [ -f /tmp/in/]
  then

  error 25
fi

for fich in /tmp/in/*
do
  if [ -f $fich ]
    then
    echo $fich >> /tmp/out/log

    mv $fich /tmp/out/ 

  

    gzip /tmp/out/ $fich  
  fi
  

done
echo $name >> /tmp/out/log
rm /tmp/out/lock
 
 
