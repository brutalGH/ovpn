#!/bin/bash
#installer Websocker tunneling 

cd
apt install python -y

#Install Script Websocket-SSH Python
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/brutalGh/ovpn/main/insshws/openssh-socket.py
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/brutalGh/ovpn/main/insshws/dropbear-ws.py
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/brutalGh/ovpn/main/insshws/ws-stunnel.py
#wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/${GitUser}/test1/${namafolder}/main/ws-ovpn && chmod +x /usr/local/bin/ws-ovpn

#izin permision
#chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel
#chmod +x /usr/local/bin/ws-ovpn


#System OpenSSH Websocket-SSH Python
wget -O /etc/systemd/system/service-wsopenssh.service https://raw.githubusercontent.com/brutalGh/ovpn/main/insshws/service-wsopenssh.service && chmod +x /etc/systemd/system/service-wsopenssh.service

#System Dropbear Websocket-SSH Python
wget -O /etc/systemd/system/service-wsdropbear.service https://raw.githubusercontent.com/brutalGh/ovpn/main/insshws/service-wsdropbear.service && chmod +x /etc/systemd/service-wsdropbear.service

#System SSL/TLS Websocket-SSH Python
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/brutalGh/ovpn/main/insshws/ws-stunnel.service && chmod +x /etc/systemd/system/ws-stunnel.service

##System Websocket-OpenVPN Python
#wget -O /etc/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/hidessh99/tuunnel-mx/main/ws-ovpn.service && chmod +x /etc/systemd/system/ws-ovpn.service

#restart service
#
systemctl daemon-reload

#Enable & Start & Restart ws-openssh service
systemctl enable service-wsopenssh.service
systemctl start service-wsopenssh.service
systemctl restart service-wsopenssh.service

#Enable & Start & Restart ws-dropbear service
systemctl enable service-wsdropbear.service
systemctl start service-wsdropbear.service
systemctl restart service-wsdropbear.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

#Enable & Start ws-ovpn service
#systemctl enable ws-ovpn.service
#systemctl start ws-ovpn.service
#systemctl restart ws-ovpn.service
