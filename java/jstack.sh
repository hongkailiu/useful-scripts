#!/bin/bash

# http://howtodoinjava.com/for-fun-only/how-to-get-thread-dump-in-linux-using-jstack/

if [[ $# -eq 0 ]]; then
  pid=$(jps | grep 'gerrit.war' | awk '{print $1}')
else
  pid=$1
fi

count=${2:-10}  # defaults to 10 times
delay=${3:-1} # defaults to 1 second

ssh -p 29418 emcgitsvc@localhost gerrit show-caches &

while [ $count -gt 0 ]
do
    jstack $pid > jstack.result.$pid.$(date +%H%M%S.%N)
    sleep $delay
    let count--
    echo -n "."
done

echo " jstack DONE"

# check the line about SshCommand
grep -rni sshcommand ./jstack.result*


echo " grep DONE"
