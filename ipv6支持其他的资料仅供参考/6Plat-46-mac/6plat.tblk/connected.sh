#!/bin/bash

cp /etc/resolv.conf /tmp/resolv.conf.org
echo "nameserver 240C::6666" > /tmp/resolv.conf 
cat /etc/resolv.conf >> /tmp/resolv.conf 
cp /tmp/resolv.conf /etc/resolv.conf
