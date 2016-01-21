#!/bin/bash
echo ""
echo "Setting up environment for devstack"
sudo ovs-vsctl add-br br-ex
sudo ovs-vsctl add-port br-ex eth1
sudo service network-interface restart INTERFACE=br-ex
sudo service network-interface restart INTERFACE=eth1
sudo route add default gw 10.0.3.2
ifconfig
echo ""
echo "devstack environment setup ... Check it out : "
echo ""
ping -c 3 google.com
