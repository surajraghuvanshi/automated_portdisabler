#author __suraj-pratap__
#version 0.1
import sys
# after being called from main program , this function will take inout from port scan as a array
# and the program will generate the batch file
# to disable open ports on Window system
#
def disableportwindow(portlist):
    # Open a file
    file = open("disableportwindow.bat", "wb")
    file.write("@echo off \n title disbaling ports \n color 1f \n");
    file.write('ver | find "2003" > nul\n');
    file.write('if %ERRORLEVEL% == 0 goto ver_2003\n');
    file.write('ver | find "XP" > nul\n');
    file.write('if %ERRORLEVEL% == 0 goto ver_xp\n');
    file.write('ver | find "2000" > nul\n');
    file.write('if %ERRORLEVEL% == 0 goto ver_2000\n');
    file.write('ver | find "NT" > nul \n');
    file.write('if %ERRORLEVEL% == 0 goto ver_nt \n');
    file.write('if not exist %SystemRoot%\system32\systeminfo.exe goto warnthenexit\n');
    file.write('systeminfo | find "OS Name" > %TEMP%\osname.txt \n');
    file.write('FOR /F "usebackq delims=: tokens=2" %%i IN (%TEMP%\osname.txt) DO set vers=%%i \n');
    file.write('echo %vers% | find "Windows 7" > nul \n');
    file.write('if %ERRORLEVEL% == 0 goto ver_7 \n');
    file.write('echo %vers% | find "Windows Server 2008" > nul \n');
    file.write('if %ERRORLEVEL% == 0 goto ver_2008 \n');
    file.write('echo %vers% | find "Windows Vista" > nul\n');
    file.write('if %ERRORLEVEL% == 0 goto ver_vista \n');
    file.write('goto warnthenexit \n');
    file.write(':ver_7\n');
    file.write('netsh advfirewall reset\n');
    file.write('netsh Advfirewall set allrprofiles state on \n');
    for singleport in portlist:
        file.write('netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:'+str(singleport)+'" dir=in protocol=TCP localport='+str(singleport)+' action=block \n');
        file.write('netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:'+str(singleport)+'" dir=out protocol=TCP localport='+str(singleport)+' action=block\n');
        file.write('netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:'+str(singleport)+'" dir=in protocol=UDP localport='+str(singleport)+' action=block\n');
        file.write('netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:'+str(singleport)+'" dir=out protocol=UDP localport='+str(singleport)+' action=block\n');
    file.write('goto exit\n');
    file.write(':ver_8\n');
    file.write('netsh advfirewall reset\n');
    file.write('netsh Advfirewall set allrprofiles state on \n');
    for singleport in portlist:
        file.write('netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:'+str(singleport)+'" dir=in protocol=TCP localport='+str(singleport)+' action=block\n');
        file.write('netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:'+str(singleport)+'" dir=out protocol=TCP localport='+str(singleport)+' action=block\n');
        file.write('netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:'+str(singleport)+'" dir=in protocol=UDP localport='+str(singleport)+' action=block\n');
        file.write('netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:'+str(singleport)+'" dir=out protocol=UDP localport='+str(singleport)+' action=block\n');
    file.write('goto exit\n');

    file.write(':ver_vista\n');
    file.write(':Run Windows vista specific commands here.\n');
    file.write('echo Windows vista \n');
    file.write('goto exit\n');

    file.write(':ver_2003\n');
    for singleport in portlist:
        file.write('IPSeccmd.exe -w REG -p "Block UDP '+str(singleport)+' Filter" -r "Block Inbound UDP '+str(singleport)+' Rule" -f *=0:'+str(singleport)+':UDP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block UDP '+str(singleport)+' Filter" -r "Block Outbound UDP '+str(singleport)+' Rule" -f 0=*:'+str(singleport)+':UDP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block TCP '+str(singleport)+' Filter" -r "Block Inbound TCP '+str(singleport)+' Rule" -f *=0:'+str(singleport)+':TCP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block TCP '+str(singleport)+' Filter" -r "Block Outbound TCP '+str(singleport)+' Rule" -f 0=*:'+str(singleport)+':TCP -n BLOCK\n');
    file.write('goto exit\n');

    file.write(':ver_xp\n');
    for singleport in portlist:
        file.write('IPSeccmd.exe -w REG -p "Block UDP '+str(singleport)+' Filter" -r "Block Inbound UDP '+str(singleport)+' Rule" -f *=0:'+str(singleport)+':UDP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block UDP '+str(singleport)+' Filter" -r "Block Outbound UDP '+str(singleport)+' Rule" -f 0=*:'+str(singleport)+':UDP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block TCP '+str(singleport)+' Filter" -r "Block Inbound TCP '+str(singleport)+' Rule" -f *=0:'+str(singleport)+':TCP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block TCP '+str(singleport)+' Filter" -r "Block Outbound TCP '+str(singleport)+' Rule" -f 0=*:'+str(singleport)+':TCP -n BLOCK\n');
    file.write('goto exit\n');

    file.write(':ver_2000\n');
    for singleport in portlist:
        file.write('IPSeccmd.exe -w REG -p "Block UDP '+str(singleport)+' Filter" -r "Block Inbound UDP '+str(singleport)+' Rule" -f *=0:'+str(singleport)+':UDP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block UDP '+str(singleport)+' Filter" -r "Block Outbound UDP '+str(singleport)+' Rule" -f 0=*:'+str(singleport)+':UDP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block TCP '+str(singleport)+' Filter" -r "Block Inbound TCP '+str(singleport)+' Rule" -f *=0:'+str(singleport)+':TCP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block TCP '+str(singleport)+' Filter" -r "Block Outbound TCP '+str(singleport)+' Rule" -f 0=*:'+str(singleport)+':TCP -n BLOCK\n');
    file.write('goto exit\n');

    file.write(':ver_nt\n');
    for singleport in portlist:
        file.write('IPSeccmd.exe -w REG -p "Block UDP '+str(singleport)+' Filter" -r "Block Inbound UDP '+str(singleport)+' Rule" -f *=0:'+str(singleport)+':UDP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block UDP '+str(singleport)+' Filter" -r "Block Outbound UDP '+str(singleport)+' Rule" -f 0=*:'+str(singleport)+':UDP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block TCP '+str(singleport)+' Filter" -r "Block Inbound TCP '+str(singleport)+' Rule" -f *=0:'+str(singleport)+':TCP -n BLOCK\n');
        file.write('IPSeccmd.exe -w REG -p "Block TCP '+str(singleport)+' Filter" -r "Block Outbound TCP '+str(singleport)+' Rule" -f 0=*:'+str(singleport)+':TCP -n BLOCK\n');
    file.write('goto exit\n');

    file.write(':warnthenexit\n');
    file.write('echo Machine undetermined.\n');
    file.write(':exit\n');
    file.close();
