@echo off 
 title disbaling ports 
 color 1f 
ver | find "2003" > nul
if %ERRORLEVEL% == 0 goto ver_2003
ver | find "XP" > nul
if %ERRORLEVEL% == 0 goto ver_xp
ver | find "2000" > nul
if %ERRORLEVEL% == 0 goto ver_2000
ver | find "NT" > nul 
if %ERRORLEVEL% == 0 goto ver_nt 
if not exist %SystemRoot%\system32\systeminfo.exe goto warnthenexit
systeminfo | find "OS Name" > %TEMP%\osname.txt 
FOR /F "usebackq delims=: tokens=2" %%i IN (%TEMP%\osname.txt) DO set vers=%%i 
echo %vers% | find "Windows 7" > nul 
if %ERRORLEVEL% == 0 goto ver_7 
echo %vers% | find "Windows Server 2008" > nul 
if %ERRORLEVEL% == 0 goto ver_2008 
echo %vers% | find "Windows Vista" > nul
if %ERRORLEVEL% == 0 goto ver_vista 
goto warnthenexit 
:ver_7
netsh advfirewall reset
netsh Advfirewall set allrprofiles state on 
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:53" dir=in protocol=TCP localport=53 action=block 
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:53" dir=out protocol=TCP localport=53 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:53" dir=in protocol=UDP localport=53 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:53" dir=out protocol=UDP localport=53 action=block
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:80" dir=in protocol=TCP localport=80 action=block 
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:80" dir=out protocol=TCP localport=80 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:80" dir=in protocol=UDP localport=80 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:80" dir=out protocol=UDP localport=80 action=block
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:631" dir=in protocol=TCP localport=631 action=block 
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:631" dir=out protocol=TCP localport=631 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:631" dir=in protocol=UDP localport=631 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:631" dir=out protocol=UDP localport=631 action=block
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:36949" dir=in protocol=TCP localport=36949 action=block 
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:36949" dir=out protocol=TCP localport=36949 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:36949" dir=in protocol=UDP localport=36949 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:36949" dir=out protocol=UDP localport=36949 action=block
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:58782" dir=in protocol=TCP localport=58782 action=block 
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:58782" dir=out protocol=TCP localport=58782 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:58782" dir=in protocol=UDP localport=58782 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:58782" dir=out protocol=UDP localport=58782 action=block
goto exit
:ver_8
netsh advfirewall reset
netsh Advfirewall set allrprofiles state on 
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:53" dir=in protocol=TCP localport=53 action=block
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:53" dir=out protocol=TCP localport=53 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:53" dir=in protocol=UDP localport=53 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:53" dir=out protocol=UDP localport=53 action=block
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:80" dir=in protocol=TCP localport=80 action=block
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:80" dir=out protocol=TCP localport=80 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:80" dir=in protocol=UDP localport=80 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:80" dir=out protocol=UDP localport=80 action=block
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:631" dir=in protocol=TCP localport=631 action=block
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:631" dir=out protocol=TCP localport=631 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:631" dir=in protocol=UDP localport=631 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:631" dir=out protocol=UDP localport=631 action=block
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:36949" dir=in protocol=TCP localport=36949 action=block
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:36949" dir=out protocol=TCP localport=36949 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:36949" dir=in protocol=UDP localport=36949 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:36949" dir=out protocol=UDP localport=36949 action=block
netsh advfirewall firewall add rule name="Blocking the TCP incomming trafic for port:58782" dir=in protocol=TCP localport=58782 action=block
netsh advfirewall firewall add rule name=Blocking the TCP Outgoing trafic for port:58782" dir=out protocol=TCP localport=58782 action=block
netsh advfirewall firewall add rule name="Blocking the UDP incomming trafic for port:58782" dir=in protocol=UDP localport=58782 action=block
netsh advfirewall firewall add rule name=Blocking the UDP Outgoing trafic for port:58782" dir=out protocol=UDP localport=58782 action=block
goto exit
:ver_vista
:Run Windows vista specific commands here.
echo Windows vista 
goto exit
:ver_2003
IPSeccmd.exe -w REG -p "Block UDP 53 Filter" -r "Block Inbound UDP 53 Rule" -f *=0:53:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 53 Filter" -r "Block Outbound UDP 53 Rule" -f 0=*:53:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 53 Filter" -r "Block Inbound TCP 53 Rule" -f *=0:53:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 53 Filter" -r "Block Outbound TCP 53 Rule" -f 0=*:53:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 80 Filter" -r "Block Inbound UDP 80 Rule" -f *=0:80:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 80 Filter" -r "Block Outbound UDP 80 Rule" -f 0=*:80:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 80 Filter" -r "Block Inbound TCP 80 Rule" -f *=0:80:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 80 Filter" -r "Block Outbound TCP 80 Rule" -f 0=*:80:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 631 Filter" -r "Block Inbound UDP 631 Rule" -f *=0:631:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 631 Filter" -r "Block Outbound UDP 631 Rule" -f 0=*:631:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 631 Filter" -r "Block Inbound TCP 631 Rule" -f *=0:631:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 631 Filter" -r "Block Outbound TCP 631 Rule" -f 0=*:631:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 36949 Filter" -r "Block Inbound UDP 36949 Rule" -f *=0:36949:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 36949 Filter" -r "Block Outbound UDP 36949 Rule" -f 0=*:36949:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 36949 Filter" -r "Block Inbound TCP 36949 Rule" -f *=0:36949:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 36949 Filter" -r "Block Outbound TCP 36949 Rule" -f 0=*:36949:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 58782 Filter" -r "Block Inbound UDP 58782 Rule" -f *=0:58782:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 58782 Filter" -r "Block Outbound UDP 58782 Rule" -f 0=*:58782:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 58782 Filter" -r "Block Inbound TCP 58782 Rule" -f *=0:58782:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 58782 Filter" -r "Block Outbound TCP 58782 Rule" -f 0=*:58782:TCP -n BLOCK
goto exit
:ver_xp
IPSeccmd.exe -w REG -p "Block UDP 53 Filter" -r "Block Inbound UDP 53 Rule" -f *=0:53:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 53 Filter" -r "Block Outbound UDP 53 Rule" -f 0=*:53:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 53 Filter" -r "Block Inbound TCP 53 Rule" -f *=0:53:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 53 Filter" -r "Block Outbound TCP 53 Rule" -f 0=*:53:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 80 Filter" -r "Block Inbound UDP 80 Rule" -f *=0:80:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 80 Filter" -r "Block Outbound UDP 80 Rule" -f 0=*:80:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 80 Filter" -r "Block Inbound TCP 80 Rule" -f *=0:80:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 80 Filter" -r "Block Outbound TCP 80 Rule" -f 0=*:80:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 631 Filter" -r "Block Inbound UDP 631 Rule" -f *=0:631:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 631 Filter" -r "Block Outbound UDP 631 Rule" -f 0=*:631:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 631 Filter" -r "Block Inbound TCP 631 Rule" -f *=0:631:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 631 Filter" -r "Block Outbound TCP 631 Rule" -f 0=*:631:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 36949 Filter" -r "Block Inbound UDP 36949 Rule" -f *=0:36949:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 36949 Filter" -r "Block Outbound UDP 36949 Rule" -f 0=*:36949:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 36949 Filter" -r "Block Inbound TCP 36949 Rule" -f *=0:36949:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 36949 Filter" -r "Block Outbound TCP 36949 Rule" -f 0=*:36949:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 58782 Filter" -r "Block Inbound UDP 58782 Rule" -f *=0:58782:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 58782 Filter" -r "Block Outbound UDP 58782 Rule" -f 0=*:58782:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 58782 Filter" -r "Block Inbound TCP 58782 Rule" -f *=0:58782:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 58782 Filter" -r "Block Outbound TCP 58782 Rule" -f 0=*:58782:TCP -n BLOCK
goto exit
:ver_2000
IPSeccmd.exe -w REG -p "Block UDP 53 Filter" -r "Block Inbound UDP 53 Rule" -f *=0:53:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 53 Filter" -r "Block Outbound UDP 53 Rule" -f 0=*:53:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 53 Filter" -r "Block Inbound TCP 53 Rule" -f *=0:53:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 53 Filter" -r "Block Outbound TCP 53 Rule" -f 0=*:53:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 80 Filter" -r "Block Inbound UDP 80 Rule" -f *=0:80:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 80 Filter" -r "Block Outbound UDP 80 Rule" -f 0=*:80:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 80 Filter" -r "Block Inbound TCP 80 Rule" -f *=0:80:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 80 Filter" -r "Block Outbound TCP 80 Rule" -f 0=*:80:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 631 Filter" -r "Block Inbound UDP 631 Rule" -f *=0:631:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 631 Filter" -r "Block Outbound UDP 631 Rule" -f 0=*:631:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 631 Filter" -r "Block Inbound TCP 631 Rule" -f *=0:631:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 631 Filter" -r "Block Outbound TCP 631 Rule" -f 0=*:631:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 36949 Filter" -r "Block Inbound UDP 36949 Rule" -f *=0:36949:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 36949 Filter" -r "Block Outbound UDP 36949 Rule" -f 0=*:36949:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 36949 Filter" -r "Block Inbound TCP 36949 Rule" -f *=0:36949:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 36949 Filter" -r "Block Outbound TCP 36949 Rule" -f 0=*:36949:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 58782 Filter" -r "Block Inbound UDP 58782 Rule" -f *=0:58782:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 58782 Filter" -r "Block Outbound UDP 58782 Rule" -f 0=*:58782:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 58782 Filter" -r "Block Inbound TCP 58782 Rule" -f *=0:58782:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 58782 Filter" -r "Block Outbound TCP 58782 Rule" -f 0=*:58782:TCP -n BLOCK
goto exit
:ver_nt
IPSeccmd.exe -w REG -p "Block UDP 53 Filter" -r "Block Inbound UDP 53 Rule" -f *=0:53:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 53 Filter" -r "Block Outbound UDP 53 Rule" -f 0=*:53:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 53 Filter" -r "Block Inbound TCP 53 Rule" -f *=0:53:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 53 Filter" -r "Block Outbound TCP 53 Rule" -f 0=*:53:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 80 Filter" -r "Block Inbound UDP 80 Rule" -f *=0:80:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 80 Filter" -r "Block Outbound UDP 80 Rule" -f 0=*:80:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 80 Filter" -r "Block Inbound TCP 80 Rule" -f *=0:80:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 80 Filter" -r "Block Outbound TCP 80 Rule" -f 0=*:80:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 631 Filter" -r "Block Inbound UDP 631 Rule" -f *=0:631:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 631 Filter" -r "Block Outbound UDP 631 Rule" -f 0=*:631:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 631 Filter" -r "Block Inbound TCP 631 Rule" -f *=0:631:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 631 Filter" -r "Block Outbound TCP 631 Rule" -f 0=*:631:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 36949 Filter" -r "Block Inbound UDP 36949 Rule" -f *=0:36949:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 36949 Filter" -r "Block Outbound UDP 36949 Rule" -f 0=*:36949:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 36949 Filter" -r "Block Inbound TCP 36949 Rule" -f *=0:36949:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 36949 Filter" -r "Block Outbound TCP 36949 Rule" -f 0=*:36949:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 58782 Filter" -r "Block Inbound UDP 58782 Rule" -f *=0:58782:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block UDP 58782 Filter" -r "Block Outbound UDP 58782 Rule" -f 0=*:58782:UDP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 58782 Filter" -r "Block Inbound TCP 58782 Rule" -f *=0:58782:TCP -n BLOCK
IPSeccmd.exe -w REG -p "Block TCP 58782 Filter" -r "Block Outbound TCP 58782 Rule" -f 0=*:58782:TCP -n BLOCK
goto exit
:warnthenexit
echo Machine undetermined.
:exit
