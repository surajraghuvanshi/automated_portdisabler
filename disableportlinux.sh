#################################################### 
######## Disbaleing linux port communication ####### 
#################################################### 
Starting iptable service
/etc/init.d/iptables start
echo 'existing iptables Rules'
iptables -L
echo 'checking for existing chain with name CustomPortBlock if exist with same name then deleting the chain' 
iptables -X CustomPortBlock
echo "Adding New Chain CustomPortBlock on Iptable"
iptables -N CustomPortBlock
echo 'Adding rule for specific ports'
iptables -A INPUT -p tcp --dport 53 -j DROP
iptables -A OUTPUT -p tcp --sport 53 -j DROP
iptables -A INPUT -p udp --dport 53 -j DROP
iptables -A OUTPUT -p udp --sport 53 -j DROP
iptables -A INPUT -p tcp --dport 80 -j DROP
iptables -A OUTPUT -p tcp --sport 80 -j DROP
iptables -A INPUT -p udp --dport 80 -j DROP
iptables -A OUTPUT -p udp --sport 80 -j DROP
iptables -A INPUT -p tcp --dport 631 -j DROP
iptables -A OUTPUT -p tcp --sport 631 -j DROP
iptables -A INPUT -p udp --dport 631 -j DROP
iptables -A OUTPUT -p udp --sport 631 -j DROP
iptables -A INPUT -p tcp --dport 33422 -j DROP
iptables -A OUTPUT -p tcp --sport 33422 -j DROP
iptables -A INPUT -p udp --dport 33422 -j DROP
iptables -A OUTPUT -p udp --sport 33422 -j DROP
iptables -A INPUT -p tcp --dport 38400 -j DROP
iptables -A OUTPUT -p tcp --sport 38400 -j DROP
iptables -A INPUT -p udp --dport 38400 -j DROP
iptables -A OUTPUT -p udp --sport 38400 -j DROP
echo 'Iptables Rules successfully applied to block communication on specified ports'
