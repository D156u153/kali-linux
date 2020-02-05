#!/bin/bash
cp -n /etc/hosts{,.old}
idomainname=$(domainname -i)
fdomainname=$(domainname -f)
newhn=$(cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c7)
echo $newhn > /etc/hostname
mv /etc/hosts /etc/hosts.old
echo "127.0.0.1 localhost" > /etc/hosts
echo "$idomainname  $fdomainname    $newhn" >> /etc/hosts
echo "# The following lines are desirable for IPv6 capable hosts" >> /etc/hosts
echo "::1     localhost ip6-localhost ip6-loopback" >> /etc/hosts
echo "ff02::1 ip6-allnodes" >> /etc/hosts
echo "ff02::2 ip6-allrouters" >> /etc/hosts
service hostname.sh stop
sleep 1
service hostname.sh start
service networking stop
sleep 1
service networking start
service network-manager stop
sleep 1
service network-manager start
xhost +$newhn
exit
