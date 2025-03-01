#!/bin/bash
var="$*"
#echo $var
num=$(echo $var |awk '{print length}')
#echo $num
xmessage $var -button x -timeout 2 -geometry 500x70+0+28
