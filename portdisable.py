#author __suraj-pratap__
#version 0.1
#/usr/bin/python
import portscaner
import disablelinuxport
import disablewinport
def portdisable():
        print 'enter the ip to scan and disable port';
        ip = raw_input()
        print str(ip);
        print 'Enter the operting system type "Window/Linux" its a case sensitive value';
        ostype = raw_input()
        print str(ostype);
        portlist= portscaner.portscan(ip)
        print portlist
        if (ostype=="Linux"):
            disablelinuxport.disableportlinux(portlist);
        elif (ostype=="Window"):
            disablewinport.disableportwindow(portlist);
if __name__ == "__main__":
        portdisable();
