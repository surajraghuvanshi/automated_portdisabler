# __author__ : suraj pratap
# version 0.1
# !/usr/bin/python
import socket
import subprocess
import sys
from datetime import datetime
def portscan(remoteServer):
    subprocess.call('clear', shell=True)
    remoteServerIP = socket.gethostbyname(remoteServer)
    print "-" * 50
    print "Please wait, scanning remote host", remoteServerIP
    print "-" * 50
    # Check what time the scan started
    t1 = datetime.now()
    # Using the range function to specify ports (here it will scans all ports between 1 and 65333)
    # We also put in some error handling for catching errors
    try:
        portlist = []
        for port in range(1, 65333):
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            result = sock.connect_ex((remoteServerIP, port))
            if result == 0:
                print "Port {}: \t Open".format(port)
                portlist.append(port)
                sock.close()
        print "#" * 50
    except KeyboardInterrupt:
        print "You pressed Ctrl+C"
        sys.exit()
    except socket.gaierror:
        print 'Hostname could not be resolved. Exiting'
        sys.exit()
    except socket.error:
        print "Couldn't connect to server"
        sys.exit()
    # Checking the time again
    t2 = datetime.now()
    # Calculates the difference of time, to see how long it took to run the script
    total = t2 - t1
    # Printing the information to screen
    print 'Scanning Completed in: ', total
    return portlist
