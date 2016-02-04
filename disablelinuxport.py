#author __suraj-pratap__
#version 0.1
#/usr/bin/python
import sys
#
# disable port Linux
#
def disableportlinux(portlist):
    print portlist;
    file = open("disableportlinux.sh", "wb");
    file.write("#################################################### \n");
    file.write("######## Disbaleing linux port communication ####### \n");
    file.write("#################################################### \n");
    file.write("Starting iptable service\n");
    file.write("/etc/init.d/iptables start\n");
    file.write("echo 'existing iptables Rules'\n");
    file.write("iptables -L\n");
    file.write("echo 'checking for existing chain with name CustomPortBlock if exist with same name then deleting the chain' \n");
    file.write('iptables -X CustomPortBlock\n');
    file.write('echo "Adding New Chain CustomPortBlock on Iptable"\n');
    file.write("iptables -N CustomPortBlock\n");
    file.write("echo 'Adding rule for specific ports'\n");
    for singleport in portlist:
        file.write("iptables -A INPUT -p tcp --dport "+str(singleport)+" -j DROP\n");
        file.write("iptables -A OUTPUT -p tcp --sport "+ str(singleport)+" -j DROP\n");
        file.write("iptables -A INPUT -p udp --dport "+str(singleport)+" -j DROP\n");
        file.write("iptables -A OUTPUT -p udp --sport "+str(singleport)+" -j DROP\n");
    file.write("echo 'Iptables Rules successfully applied to block communication on specified ports'\n")
    file.close();
