#!/bin/bash
if [ -f ./hosts ]; then
    mv hosts hosts.old
fi
cat kirilhosts.0 kirilhosts.1 kirilhosts.2 kirilhosts.3 kirilhosts.4 kirilhosts.5 kirilhosts.6 kirilhosts.7 kirilhosts.8 kirilhosts.9 > hosts.temp
awk '!seen[$0]++' hosts.temp > hosts
# perl -i -ne 'print if ! $x{$_}++' hosts.temp2 > hosts
rm hosts.temp
