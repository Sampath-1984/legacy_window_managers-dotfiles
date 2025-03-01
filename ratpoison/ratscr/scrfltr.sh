#!/bin/bash
time=$(date +'%k%M')
if [[ $time -ge 1930 ]] || [[ $time -le 0615 ]];
	then
	blugon -o --setcurrent=3400
fi

#echo $time 
