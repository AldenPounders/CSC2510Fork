#!/bin/bash

find /usr/bin -name "c*"
find /usr/bin -type l -name "*sh*"
find /usr | head
grep "model name" /proc/cpuinfo
grep -c -v "sudo" /etc/group
grep -n  "sudo" /etc/group
sort food
sort -r food
sort -k 2 food
sort -k 4,4 -k 3,3 -r -n food > calo
