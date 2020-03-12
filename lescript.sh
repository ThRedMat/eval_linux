#!/bin/bash

echo "hello word"

  if [ -e /tmp/out/lock ]
     then

     exit 22

  else
touch /tmp/out/lock

for fich in /tmp/in/*
do
  if [ -f $fich ]
    then
    
    mv $fich /tmp/out/ 

  

    gzip /tmp/out/ $fich  
  fi


done

rm /tmp/out/lock

fi

