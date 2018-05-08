#!/bin/bash

apt install sysstat -y > /dev/null 2>&1
yum install sysstat -y > /dev/null 2>&1

while [ -n "$1" ]
do
case "$1" in
--cpu) mpstat ;;
--memory) free -m;;
--h) cat logic.sh;;
*) echo "$1 is not an option" ;;
esac
exit
done

cat /etc/*release* | sed '$d'
