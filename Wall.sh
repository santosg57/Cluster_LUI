#!/bin/bash

lista=(
)

fil_out="top_feb1218.txt"

for file in `seq 0 2 54`
do
   maquina=${lista[$file+1]}
   echo "-----------------------------"$maquina
   path=${lista[$file]}
   sshpass -p $1 ssh -X -Y santosg@$path "./wall.sh"
done

