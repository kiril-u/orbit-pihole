#!/bin/bash
if [ -f ./hosts ]; then
    mv hosts hosts.old
fi
cat kirils-hosts.1 kirils-hosts.2 kirils-hosts.3 kirils-hosts.4 kirils-hosts.5 kirils-hosts.6 > hosts.temp
awk '!seen[$0]++' hosts.temp > hosts
rm hosts.temp
git add hosts
