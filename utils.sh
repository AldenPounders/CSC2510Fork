#!/bin/bash

find /usr/bin -name "c*"
find /usr/bin -type l -name "*sh*"
find /usr | head
grep "model name" /proc/cpuinfo
grep -c -v "sudo" /etc/group
grep -n  "sudo" /etc/group
