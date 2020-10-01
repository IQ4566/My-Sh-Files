echo ---------------------
echo  -e "\033[32;5mStarting OpenVPN Install!\033[0m"
echo ----------------------

sudo apt-get upgrade

sudo apt-get update 

sudo apt install wget

sudo wget https://raw.githubusercontent.com/Nyr/openvpn-install/master/openvpn-install.sh 

sudo chmod 777 openvpn-install.sh

sudo bash openvpn-install.sh

echo ---------------------
echo  -e "\033[32;5mOpenVPN Installed!\033[0m"
echo ----------------------
/etc/ssh/sshd_config
sudo apt-get install ufw
sudo ufw deny ntp
sudo ufw deny 3389/udp
sudo ufw allow 3478/udp
sudo ufw allow 3479/udp
sudo ufw allow 2000/tcp
sudo ufw allow in on eth0 to any port 80
sudo ufw allow in on eth0 to any port 443
sudo ufw allow in on eth0 to any port 64444
sudo ufw insert 1 deny from 10.0.0.0/8
sudo ufw insert 1 deny from 169.254.0.0/16
sudo ufw insert 1 deny from 172.16.0.0/12
sudo ufw insert 1 deny from 224.0.0.0/4
sudo ufw insert 1 deny from 224.0.0.0/4
sudo ufw insert 1 deny from 240.0.0.0/5
sudo ufw insert 1 deny from 240.0.0.0/5
sudo ufw insert 1 deny from 0.0.0.0/8
sudo ufw insert 1 deny from 0.0.0.0/8
sudo ufw insert 1 deny from 239.255.255.0/24 
sudo ufw insert 1 deny from 0.0.0.0/7
sudo ufw insert 1 deny from 50.7.0.0/16
sudo ufw insert 1 deny from 94.102.0.0/16
sudo ufw insert 1 deny from 194.147.0.0/16
sudo ufw insert 1 deny from 23.237.0.0/16
sudo ufw insert 1 deny from 195.154.0.0/16
sudo ufw insert 1 deny from 51.15.0.0/16
sudo ufw insert 1 deny from 46.29.0.0/16
sudo ufw insert 1 deny from 185.216.0.0/16 
sudo ufw insert 1 deny from 192.240.0.0/16
sudo ufw insert 1 deny from 153.36.0.0/16
sudo ufw insert 1 deny from 163.172.84.240/16
sudo ufw insert 1 deny from 163.172.0.0/16
sudo ufw deny from 127.0.0.1/32 to any
sudo ufw deny 1194/tcp
sudo ufw deny 1194/udp
sudo ufw deny 65535
sudo ufw deny 1:125/udp
sudo ufw deny 1:125/tcp
sudo ufw allow 2000:3000/udp
sudo ufw default deny
sudo ufw deny 4500/udp
sudo ufw deny 27000/udp
sudo ufw allow 48275/udp
sudo ufw enable
sudo iptables ufw limit 22/tcp
sudo ufw limit 23452/tcp
sudo ufw deny ntp
sudo ufw deny 3389
sudo ufw allow 3478
sudo ufw allow 3479
sudo ufw allow 3074
sudo ufw allow 6672
sudo ufw allow 5223
sudo ufw allow 3658
sudo ufw limit 23452
sudo ufw allow 30000
sudo ufw allow 30001
sudo ufw allow 30002
sudo ufw allow 30003
sudo ufw allow 30004
sudo ufw allow 30005
sudo ufw allow 30006
sudo ufw allow 30007
sudo ufw allow 30008
sudo ufw allow 30009
sudo ufw allow 30010
sudo ufw allow 30011
sudo ufw allow 2000:3000/udp
sudo ufw reload
sudo ufw allow 6672/udp
sudo ufw allow 61455/udp
sudo ufw allow 61457/udp
sudo ufw allow 61456/udp
sudo ufw allow 61458/udp
sudo ufw reload
sudo ufw allow 7000:10000/udp
sudo ufw reload
sudo ufw deny 36000:65535/udp
sudo ufw reload
sudo ufw deny 36000:65535/tcp
sudo ufw reload
sudo ufw deny 125:500/udp
sudo ufw deny 125:500/tcp
sudo ufw reloadsudo ufw deny 1:65535/udp
sudo ufw reload
sudo ufw deny 1:65535/tcp
sudo iptables -A INPUT -p udp -m udp --dport 9987 -m string --hex-string "|fa163eb402096ac8|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 9987 -m string --hex-string "|71f63813d5422309|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 9987 -m length --length 0:32 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 9987 -m length --length 2521:65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 9987 -m length --length 98 -j DROP
sudo iptables -A INPUT -p udp -m length --length 65535 -j DROP
sudo iptables -A INPUT -p udp -m length --length 60000 -j DROP
sudo iptables -A INPUT -p udp -m length --length 30000 -j DROP
sudo iptables -A INPUT -p udp -m length --length 10000 -j DROP
sudo iptables -A INPUT -p udp -m length --length 4096 -j DROP
sudo iptables -A INPUT -p udp -m length --length 1052 -j DROP
sudo iptables -A INPUT -p udp -m length --length 1000 -j DROP
sudo iptables -A INPUT -p udp -m length --length 912 -j DROP
sudo iptables -A INPUT -p udp -m length --length 540 -j DROP
sudo iptables -A INPUT -p udp -m length --length 55 -j DROP
sudo iptables -A INPUT -p udp -m length --length 38 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 37810 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 7001 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 17185 -j DROP
sudo iptables -A INPUT -p udp -m multiport --sports 3072,3702 -j DROP
sudo iptables -A INPUT -p tcp -m multiport --sports 3072,3702 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 3283 -m length --length 1006 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 32414 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 177 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 6881 -m length --length 280:300 -j DROP
sudo iptables -A INPUT -p udp -m length --length 240:269 -m udp --sport 32414 -j DROP
sudo iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
sudo iptables -A INPUT -p tcp -m tcp ! --tcp-flags FIN,SYN,RST,ACK SYN -m conntrack --ctstate NEW -j DROP
sudo iptables -A INPUT -p tcp -m conntrack --ctstate NEW -m tcpmss ! --mss 536:65535 -j DROP
sudo iptables -A INPUT -s 224.0.0.0/3 -j DROP
sudo iptables -A INPUT -s 169.254.0.0/16 -j DROP
sudo iptables -A INPUT -s 172.16.0.0/12 -j DROP
sudo iptables -A INPUT -s 192.0.2.0/24 -j DROP
sudo iptables -A INPUT -s 192.168.0.0/16 -j DROP
sudo iptables -A INPUT -s 10.0.0.0/8 -j DROP
sudo iptables -A INPUT -s 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -s 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -s 127.0.0.0/8 ! -i lo -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN FIN,SYN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags SYN,RST SYN,RST -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN FIN,SYN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,RST FIN,RST -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,ACK FIN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags ACK,URG URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,ACK FIN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags PSH,ACK PSH -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,PSH,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,PSH,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,ACK,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN FIN,SYN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags SYN,RST SYN,RST -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,RST FIN,RST -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,ACK FIN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags ACK,URG URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,ACK FIN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags PSH,ACK PSH -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,PSH,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,PSH,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,ACK,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -m limit --limit 50/sec -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN FIN,SYN -m limit --limit 50/sec -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -m limit --limit 50/sec -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 16000:29000 -m string --string "HTTP/1.1 200 OK" --algo bm --to 75 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --hex-string "|ffffffff6765746368616c6c656e676520302022|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --hex-string "|00000000000000000000000000000000|" --algo kmp --from 32 --to 33 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --string "SAMP" --algo kmp --from 28 --to 29 -j DROP
sudo iptables -A INPUT -p tcp -m tcp -m string --hex-string "|000000005010|" --algo kmp --from 28 --to 29 -m length --length 40 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --hex-string "|00000000000000000000000000000000|" --algo kmp --from 32 --to 33 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --hex-string "|ffffffff6765746368616c6c656e676520302022|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 443 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 443 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 62305 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 22 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 62305 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 22 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 443 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbf30783030363030453038|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 443 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbf30783030363030453038|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 62305 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbf30783030363030453038|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 22 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbf30783030363030453038|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 62305 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbf30783030363030453038|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 22 -m string --hex-string "|efbbbfefbbbfefbbbfefbbbf30783030363030453038|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 443 -m string --hex-string "|efbbbfefbbbfefbbbf30783030363030453030|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 443 -m string --hex-string "|efbbbfefbbbfefbbbf30783030363030453030|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 62305 -m string --hex-string "|efbbbfefbbbfefbbbf30783030363030453030|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 22 -m string --hex-string "|efbbbfefbbbfefbbbf30783030363030453030|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 62305 -m string --hex-string "|efbbbfefbbbfefbbbf30783030363030453030|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 22 -m string --hex-string "|efbbbfefbbbfefbbbf30783030363030453030|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 443 -m string --hex-string "|efbbbfefbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 443 -m string --hex-string "|efbbbfefbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 62305 -m string --hex-string "|efbbbfefbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 22 -m string --hex-string "|efbbbfefbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 62305 -m string --hex-string "|efbbbfefbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 22 -m string --hex-string "|efbbbfefbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 443 -m string --hex-string "|efbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 443 -m string --hex-string "|efbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 62305 -m string --hex-string "|efbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 22 -m string --hex-string "|efbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 62305 -m string --hex-string "|efbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 22 -m string --hex-string "|efbbbf307830303030303030303030433032313130|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 443 -m string --hex-string "|efbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 443 -m string --hex-string "|efbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 62305 -m string --hex-string "|efbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 22 -m string --hex-string "|efbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 62305 -m string --hex-string "|efbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 22 -m string --hex-string "|efbbbf30783030303230303031|" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 443 -m string --string "wpad.domain.name" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 443 -m string --string "wpad.domain.name" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 62305 -m string --string "wpad.domain.name" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 62305 -m string --string "wpad.domain.name" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 22 -m string --string "wpad.domain.name" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 27043 -m state --state NEW -m recent --update --seconds 1 --hitcount 2 --name DEFAULT --mask 255.255.255.255 --rsource -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 27043 -m state --state NEW -m recent --set --name DEFAULT --mask 255.255.255.255 --rsource
sudo iptables -A INPUT -p udp -m udp -m string --string "SAMP" --algo kmp --from 28 --to 29 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --hex-string "|7374640000000000|" --algo kmp --from 28 --to 29 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 16000:29000 -m string --string "HTTP/1.1 200 OK" --algo bm --to 75 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --hex-string "|7374640000000000|" --algo kmp --from 28 --to 29 -j DROP
sudo iptables -A INPUT -s 51.77.227.246/32 -j DROP
sudo iptables -A INPUT -s 207.154.206.212/32 -j DROP
sudo iptables -A INPUT -s 73.34.124.146/32 -j DROP
sudo iptables -A INPUT -s 51.68.82.218/32 -j DROP
sudo iptables -A INPUT -s 209.141.50.57/32 -j DROP
sudo iptables -A INPUT -s 170.210.68.163/32 -j DROP
sudo iptables -A INPUT -s 213.111.35.160/32 -j DROP
sudo iptables -A INPUT -s 134.208.23.110/32 -j DROP
sudo iptables -A INPUT -s 207.154.206.212/32 -j DROP
sudo iptables -A INPUT -s 118.24.231.39/32 -j DROP
sudo iptables -A INPUT -s 182.100.67.15/32 -j DROP
sudo iptables -A INPUT -s 118.89.142.127/32 -j DROP
sudo iptables -A INPUT -s 118.24.236.219/32 -j DROP
sudo iptables -A INPUT -s 207.154.206.212/32 -j DROP
sudo iptables -A INPUT -s 73.34.124.146/32 -j DROP
sudo iptables -A INPUT -s 51.68.82.218/32 -j DROP
sudo iptables -A INPUT -s 209.141.50.57/32 -j DROP
sudo iptables -A INPUT -s 170.210.68.163/32 -j DROP
sudo iptables -A INPUT -s 213.111.35.160/32 -j DROP
sudo iptables -A INPUT -s 134.208.23.110/32 -j DROP
sudo iptables -A INPUT -s 207.154.206.212/32 -j DROP
sudo iptables -A INPUT -s 118.24.231.39/32 -j DROP
sudo iptables -A INPUT -s 182.100.67.15/32 -j DROP
sudo iptables -A INPUT -s 118.89.142.127/32 -j DROP
sudo iptables -A INPUT -s 118.24.236.219/32 -j DROP
sudo iptables -A INPUT -s 157.230.225.45/32 -j DROP
sudo iptables -A INPUT -s 51.77.227.246/32 -j DROP
sudo iptables -A INPUT -s 207.154.206.212/32 -j DROP
sudo iptables -A INPUT -s 73.34.124.146/32 -j DROP
sudo iptables -A INPUT -s 51.68.82.218/32 -j DROP
sudo iptables -A INPUT -s 209.141.50.57/32 -j DROP
sudo iptables -A INPUT -s 170.210.68.163/32 -j DROP
sudo iptables -A INPUT -s 213.111.35.160/32 -j DROP
sudo iptables -A INPUT -s 134.208.23.110/32 -j DROP
sudo iptables -A INPUT -s 207.154.206.212/32 -j DROP
sudo iptables -A INPUT -s 118.24.231.39/32 -j DROP
sudo iptables -A INPUT -s 182.100.67.15/32 -j DROP
sudo iptables -A INPUT -s 118.89.142.127/32 -j DROP
sudo iptables -A INPUT -s 118.24.236.219/32 -j DROP
sudo iptables -A INPUT -s 207.154.206.212/32 -j DROP
sudo iptables -A INPUT -s 73.34.124.146/32 -j DROP
sudo iptables -A INPUT -s 51.68.82.218/32 -j DROP
sudo iptables -A INPUT -s 209.141.50.57/32 -j DROP
sudo iptables -A INPUT -s 170.210.68.163/32 -j DROP
sudo iptables -A INPUT -s 213.111.35.160/32 -j DROP
sudo iptables -A INPUT -s 134.208.23.110/32 -j DROP
sudo iptables -A INPUT -s 207.154.206.212/32 -j DROP
sudo iptables -A INPUT -s 118.24.231.39/32 -j DROP
sudo iptables -A INPUT -s 182.100.67.15/32 -j DROP
sudo iptables -A INPUT -s 118.89.142.127/32 -j DROP
sudo iptables -A INPUT -s 118.24.236.219/32 -j DROP
sudo iptables -A INPUT -s 157.230.225.45/32 -j DROP
sudo iptables -A INPUT -p udp -m length --length 100:140 -m string --string "nAFS" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -s 127.0.0.1/32 -j ACCEPT
sudo iptables -A INPUT -s 173.234.31.243/32 -j ACCEPT
sudo iptables -A INPUT -s 158.69.6.195/32 -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
sudo iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp -m connlimit --connlimit-above 8 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -p tcp -m tcp --dport 22 -m conntrack --ctstate NEW -j DROP
sudo iptables -A INPUT -d 158.69.6.195/32 -p icmp -m icmp --icmp-type 8 -j DROP
sudo iptables -A INPUT -p tcp -m tcp --dport 27304 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 20000:30000 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 3080:9000 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1800:2500 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 2644 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1562 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1375 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1267 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 2654 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 2531 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1243 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1200:2950 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1078 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 3000 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 2980 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 3003 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1037 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 420 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p tcp -m tcp --dport 420 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 30735 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 30728 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 64655 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 65168 -m state --state NEW,ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1:65535 -m length --length 60 -m connlimit --connlimit-above 5000 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1:65535 -m length --length 39:150 -m connlimit --connlimit-above 5000 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1:65535 -m length --length 132 -m connlimit --connlimit-above 5000 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1:65535 -m length --length 140 -m connlimit --connlimit-above 5000 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1:65535 -m length --length 253 -m connlimit --connlimit-above 5000 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 1:65535 -m length --length 600:3000 -m connlimit --connlimit-above 5000 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -p tcp -m length --length 1240 -m string --string "0101010912382189" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 1200 -m string --string "0101010912382189" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 1440 -m string --string "0101010912382189" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 1400 -m string --string "0101010912382189" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 540 -m string --string "0101010912382189" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 500 -m string --string "0101010912382189" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 540 -m string --string "XXXXXXXXXXXXXXXX" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 500 -m string --string "XXXXXXXXXXXXXXXX" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 1440 -m string --string "XXXXXXXXXXXXXXXX" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 1400 -m string --string "XXXXXXXXXXXXXXXX" --algo kmp --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -m connlimit --connlimit-above 2 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -s 10.0.0.0/8 -j DROP
sudo iptables -A INPUT -s 169.254.0.0/16 -j DROP
sudo iptables -A INPUT -s 172.16.0.0/12 -j DROP
sudo iptables -A INPUT -s 127.0.0.0/8 -i eth0 -j DROP
sudo iptables -A INPUT -s 224.0.0.0/4 -j DROP
sudo iptables -A INPUT -d 224.0.0.0/4 -j DROP
sudo iptables -A INPUT -s 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -d 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -s 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -d 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -d 239.255.255.0/24 -j DROP
sudo iptables -A INPUT -d 255.255.255.255/32 -j DROP
sudo iptables -A INPUT -m state --state INVALID -j DROP
sudo iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
sudo iptables -A INPUT -m state --state INVALID -j DROP
sudo iptables -A INPUT -s 10.0.0.0/8 -j DROP
sudo iptables -A INPUT -s 169.254.0.0/16 -j DROP
sudo iptables -A INPUT -s 172.16.0.0/12 -j DROP
sudo iptables -A INPUT -s 127.0.0.0/8 -i eth0 -j DROP
sudo iptables -A INPUT -s 224.0.0.0/4 -j DROP
sudo iptables -A INPUT -d 224.0.0.0/4 -j DROP
sudo iptables -A INPUT -s 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -d 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -s 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -d 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -d 239.255.255.0/24 -j DROP
sudo iptables -A INPUT -d 255.255.255.255/32 -j DROP
sudo iptables -A INPUT -s 169.254.0.0/16 -j DROP
sudo iptables -A INPUT -s 172.16.0.0/12 -j DROP
sudo iptables -A INPUT -s 127.0.0.0/8 -j DROP
sudo iptables -A INPUT -s 224.0.0.0/4 -j DROP
sudo iptables -A INPUT -d 224.0.0.0/4 -j DROP
sudo iptables -A INPUT -s 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -d 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -s 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -d 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -d 239.255.255.0/24 -j DROP
sudo iptables -A INPUT -d 255.255.255.255/32 -j DROP
sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -s 192.168.1.0/24 -p tcp -m tcp --dport 21 -j ACCEPT
sudo iptables -A INPUT -s 192.168.1.0/24 -p tcp -m tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -s 192.168.1.0/24 -p tcp -m tcp --dport 10000 -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,PSH,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,PSH,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,ACK,URG -j DROP
sudo iptables -A INPUT -s 73.144.69.72/32 -j DROP
sudo iptables -A INPUT -s 104.24.100.100/32 -j DROP
sudo iptables -A INPUT -s 104.24.31.73/32 -j DROP
sudo iptables -A INPUT -s 159.89.89.88/32 -j DROP
sudo iptables -A INPUT -s 73.144.69.72/32 -j DROP
sudo iptables -A INPUT -s 104.24.100.100/32 -j DROP
sudo iptables -A INPUT -s 104.24.31.73/32 -j DROP
sudo iptables -A INPUT -s 159.89.89.88/32 -j DROP
sudo iptables -A INPUT -p icmp -m icmp --icmp-type 8 -m length --length 60:65535 -j ACCEPT
sudo iptables -A INPUT -m u32 --u32 "0xc&0xffff=0x0" -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x1a&0xffffffff=0xfeff" -j DROP
sudo iptables -A INPUT -p udp -f -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x16&0xffff=0x8" -j DROP
sudo iptables -A INPUT -m pkttype --pkt-type broadcast -j DROP
sudo iptables -A INPUT -p icmp -m icmp --icmp-type 8 -m limit --limit 3/sec -j ACCEPT
sudo iptables -A INPUT -p icmp -m icmp --icmp-type 17 -j DROP
sudo iptables -A INPUT -p icmp -m icmp --icmp-type 13 -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags RST RST -m limit --limit 2/sec --limit-burst 2 -j ACCEPT
sudo iptables -A INPUT -p udp -m udp --dport 7 -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 19 -j DROP
sudo iptables -A INPUT -p tcp -m connlimit --connlimit-above 80 --connlimit-mask 32 --connlimit-saddr -j REJECT --reject-with tcp-reset
sudo iptables -A INPUT -p udp -m udp --dport 135:139 -j DROP
sudo iptables -A INPUT -p tcp -m tcp --dport 135:139 -j DROP
sudo iptables -A INPUT -p udp -m pkttype --pkt-type broadcast -j DROP
sudo iptables -A INPUT -p udp -m limit --limit 3/sec -j ACCEPT
sudo iptables -A INPUT -p icmp -f -j DROP
sudo iptables-save
sudo iptables -A INPUT -i lo -p udp -m udp --dport 123 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 123 -m state --state ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 123 -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN FIN,SYN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags SYN,RST SYN,RST -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,RST FIN,RST -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,ACK FIN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags ACK,URG URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags PSH,ACK PSH -j DROP
sudo iptables -A INPUT -m u32 --u32 "0xc&0xffff=0x0" -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p tcp -m tcp ! --tcp-flags FIN,SYN,RST,ACK SYN -m state --state NEW -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x6&0xff=0x0,0x2:0x5,0x7:0x10,0x12:0xff" -j DROP
sudo iptables -A INPUT -m u32 --u32 "0xc&0xffff=0xffff" -j DROP
sudo iptables -A INPUT -m u32 --u32 "0x1c&0xff0=0xfedfffff" -j DROP
sudo iptables -A INPUT -m string --string "farewell" --algo bm --from 28 --to 29 -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x1c&0xff00ff=0x200020&&0x20&0xff00ff=0x200020&&0x24&0xff00ff=0x200020&&0x28&0xff00ff=0x200020" -j DROP
sudo iptables -A INPUT -m recent --rcheck --seconds 86400 --name portscan --mask 255.255.255.255 --rsource -j DROP
sudo iptables -A INPUT -m recent --remove --name portscan --mask 255.255.255.255 --rsource
sudo iptables -A INPUT -p tcp -m tcp --dport 139 -m recent --set --name portscan --mask 255.255.255.255 --rsource -j LOG --log-prefix "Portscan:"
sudo iptables -A INPUT -p udp -m u32 --u32 "0x16&0xffff=0x8" -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x1c&0xff00ff=0x200020&&0x20&0xff00ff=0x200020&&0x24&0xff00ff=0x200020&&0x28&0xff00ff=0x200020" -j DROP
sudo iptables -A INPUT -p tcp -m u32 --u32 "0x16&0xffff=0x8" -j DROP
sudo iptables -A INPUT -p tcp -m u32 --u32 "0x1c&0xff00ff=0x200020&&0x20&0xff00ff=0x200020&&0x24&0xff00ff=0x200020&&0x28&0xff00ff=0x200020" -j DROP
sudo iptables -A INPUT -m u32 --u32 "0xc&0xffff=0xffff" -j DROP
sudo iptables -A INPUT -m u32 --u32 "0x1c&0xff0=0xfedfffff" -j DROP
sudo iptables -A INPUT -m string --string "farewell" --algo bm --from 28 --to 29 -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x1c&0xff00ff=0x200020&&0x20&0xff00ff=0x200020&&0x24&0xff00ff=0x200020&&0x28&0xff00ff=0x200020" -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --string "0123456789ABCDE" --algo bm --from 28 --to 29 -j DROP
sudo iptables -A INPUT -m u32 --u32 "0xc&0xffff=0x0" -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x1a&0xffffffff=0xfeff" -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --string "0123456789" --algo bm --from 44 --to 45 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --string "A cat is fine too" --algo bm --from 28 --to 29 -j DROP
sudo iptables -A INPUT -p udp -m udp -m string --string "flood" --algo bm --from 28 --to 29 -j DROP
sudo iptables -A INPUT -m string --string "q00000000000000" --algo bm --from 32 --to 33 -j DROP
sudo iptables -A INPUT -m string --string "statusResponse" --algo bm --from 32 --to 33 -j DROP
sudo iptables -A INPUT -i lo -p udp -m udp --dport 123 -j DROP
sudo iptables -A INPUT -p udp -m udp --sport 123 -m state --state ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x16&0xffff=0x8" -j DROP
sudo iptables -A INPUT -p icmp -j DROP
sudo iptables -A INPUT -s 142.217.248.194/32 -p tcp -m tcp --dport 22 -j DROP
sudo iptables -A INPUT -p tcp -m tcp --dport 22 -j DROP
sudo iptables -A FORWARD -m state --state INVALID -j DROP
sudo iptables -A FORWARD -m conntrack --ctstate INVALID -j DROP
sudo iptables -A FORWARD -m state --state INVALID -j DROP
sudo iptables -A FORWARD -m recent --rcheck --seconds 86400 --name portscan --mask 255.255.255.255 --rsource -j DROP
sudo iptables -A FORWARD -m recent --remove --name portscan --mask 255.255.255.255 --rsource
sudo iptables -A FORWARD -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -m limit --limit 1/sec -j ACCEPT
sudo iptables -A FORWARD -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK RST -m limit --limit 1/sec -j ACCEPT
sudo iptables -A FORWARD -o tun0 -j ACCEPT
sudo iptables -A FORWARD -s 192.168.2.0/24 -i tun0 -o eth0 -m conntrack --ctstate NEW -j ACCEPT
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -p udp -m limit --limit 1/sec -j ACCEPT
sudo iptables -A FORWARD -p icmp -m icmp --icmp-type 8 -m limit --limit 1/sec -j ACCEPT
sudo iptables -A FORWARD -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK RST -m limit --limit 1/sec -j ACCEPT
sudo iptables -A OUTPUT ! -s 127.81.201.215/32 ! -d 127.152.237.28/32 -p icmp -m icmp --icmp-type 3/3 -m connmark ! --mark 0x60848573 -j DROP
sudo iptables -A OUTPUT ! -s 127.159.119.213/32 ! -d 127.22.239.99/32 -p tcp -m tcp --sport 61001:65535 --tcp-flags RST RST -m connmark ! --mark 0x4e08e4bb -j DROP
sudo iptables -A OUTPUT -m state --state INVALID -j DROP
sudo iptables -A OUTPUT -m conntrack --ctstate INVALID -j DROP
sudo iptables -A OUTPUT -m state --state INVALID -j DROP
sudo iptables -A OUTPUT -p udp -m udp --dport 123 -j ACCEPT
sudo iptables -A OUTPUT ! -s 127.198.148.58/32 ! -d 127.77.75.129/32 -p icmp -m icmp --icmp-type 3/3 -m connmark ! --mark 0x7ba5407d -j DROP
sudo iptables -A OUTPUT ! -s 127.231.45.126/32 ! -d 127.20.246.233/32 -p tcp -m tcp --sport 61001:65535 --tcp-flags RST RST -m connmark ! --mark 0x407ee413 -j DROP
sudo iptables -A OUTPUT ! -s 127.198.148.58/32 ! -d 127.77.75.129/32 -p icmp -m icmp --icmp-type 3/3 -m connmark ! --mark 0x7ba5407d -j DROP
sudo iptables -A OUTPUT ! -s 127.231.45.126/32 ! -d 127.20.246.233/32 -p tcp -m tcp --sport 61001:65535 --tcp-flags RST RST -m connmark ! --mark 0x407ee413 -j DROP
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -N AS0_ACCEPT
sudo iptables -N AS0_IN
sudo iptables -N AS0_IN_NAT
sudo iptables -N AS0_IN_POST
sudo iptables -N AS0_IN_PRE
sudo iptables -N AS0_IN_ROUTE
sudo iptables -N AS0_OUT
sudo iptables -N AS0_OUT_LOCAL
sudo iptables -N AS0_OUT_POST
sudo iptables -N AS0_OUT_S2C
sudo iptables -N AS0_WEBACCEPT
sudo iptables -N f2b-sshd
sudo iptables -N flood
sudo iptables -N http-flood
sudo iptables -N port-scanning
sudo iptables -N syn-flood
sudo iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -m connlimit --connlimit-above 15 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -s 98.196.144.57 -p tcp -m tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -s 185.200.34.84 IP -p tcp -m tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -s 185.200.34.84 -p tcp -m tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -s 185.200.34.84 -p tcp -m tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,ACK FIN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags PSH,ACK PSH -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags ACK,URG URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,RST FIN,RST -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN FIN,SYN -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags SYN,RST SYN,RST -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,PSH,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,PSH,URG -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,ACK,URG -j DROP
sudo iptables -A INPUT -p udp -m udp --dport 3074 -j ACCEPT
sudo iptables -A INPUT -p udp -m udp --dport 3075 -j ACCEPT
sudo iptables -A INPUT -m recent --rcheck --seconds 604800 --name portscan --mask 255.255.255.255 --rsource -j DROP
sudo iptables -A INPUT -m recent --remove --name portscan --mask 255.255.255.255 --rsource
sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -j AS0_ACCEPT
sudo iptables -A INPUT -i lo -j AS0_ACCEPT
sudo iptables -A INPUT -m mark --mark 0x2000000/0x2000000 -j AS0_IN_PRE
sudo iptables -A INPUT -d 185.200.34.84 -p udp -m state --state NEW -m udp --dport 1194 -j AS0_ACCEPT
sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -j AS0_WEBACCEPT
sudo iptables -A INPUT -p tcp -m multiport --dports 22 -j f2b-sshd
sudo iptables -A INPUT -p tcp -m multiport --dports 22 -j f2b-sshd
sudo iptables -A INPUT -s 127.0.0.1/32 -j ACCEPT
sudo iptables -A INPUT -s 172.27.224.1/32 -j ACCEPT
sudo iptables -A INPUT -s 74.91.115.219 -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
sudo iptables -A INPUT -d 185.200.34.84 -p icmp -m icmp --icmp-type 8 -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -p tcp -m connlimit --connlimit-above 10 --connlimit-mask 32 --connlimit-saddr -j DROP
sudo iptables -A INPUT -p tcp -m tcp --dport 18921 -j DROP
sudo iptables -A INPUT -p tcp -m tcp --dport 943 -j DROP
sudo iptables -A INPUT -s 54.39.85.146 -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --dport 65317 -j DROP
sudo iptables -A INPUT -s 10.0.0.0/8 -j DROP
sudo iptables -A INPUT -s 169.254.0.0/16 -j DROP
sudo iptables -A INPUT -s 172.16.0.0/12 -j DROP
sudo iptables -A INPUT -s 127.0.0.0/8 -j DROP
sudo iptables -A INPUT -s 224.0.0.0/4 -j DROP
sudo iptables -A INPUT -d 224.0.0.0/4 -j DROP
sudo iptables -A INPUT -s 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -d 240.0.0.0/5 -j DROP
sudo iptables -A INPUT -s 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -d 0.0.0.0/8 -j DROP
sudo iptables -A INPUT -d 239.255.255.0/24 -j DROP
sudo iptables -A INPUT -d 255.255.255.255/32 -j DROP
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags RST RST -m limit --limit 2/sec --limit-burst 2 -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --tcp-flags RST RST -m limit --limit 2/sec --limit-burst 2 -j ACCEPT
sudo iptables -A INPUT -s 147.135.87.129 -p tcp -m tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp -m tcp --dport 22 -j DROP
sudo iptables -A FORWARD -m recent --rcheck --seconds 604800 --name portscan --mask 255.255.255.255 --rsource -j DROP
sudo iptables -A FORWARD -m recent --remove --name portscan --mask 255.255.255.255 --rsource
sudo iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j AS0_ACCEPT
sudo iptables -A FORWARD -m mark --mark 0x2000000/0x2000000 -j AS0_IN_PRE
sudo iptables -A FORWARD -o as0t+ -j AS0_OUT_S2C
sudo iptables -A FORWARD -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK SYN -m limit --limit 1/sec -j ACCEPT
sudo iptables -A FORWARD -p udp -m limit --limit 1/sec -j ACCEPT
sudo iptables -A FORWARD -p icmp -m icmp --icmp-type 8 -m limit --limit 1/sec -j ACCEPT
sudo iptables -A FORWARD -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK RST -m limit --limit 1/sec -j ACCEPT
sudo iptables -A OUTPUT ! -s 127.181.42.17/32 ! -d 127.138.213.242/32 -p icmp -m icmp --icmp-type 3/3 -m connmark ! --mark 0x53a7de36 -j DROP
sudo iptables -A OUTPUT ! -s 127.17.79.83/32 ! -d 127.95.130.90/32 -p tcp -m tcp --sport 61001:65535 --tcp-flags RST RST -m connmark ! --mark 0x7bc1a1f4 -j DROP
sudo iptables -A OUTPUT -o as0t+ -j AS0_OUT_LOCAL
sudo iptables -A AS0_ACCEPT -j ACCEPT
sudo iptables -A AS0_IN -d 172.27.224.1/32 -j ACCEPT
sudo iptables -A AS0_IN -j AS0_IN_POST
sudo iptables -A AS0_IN_NAT -j MARK --set-xmark 0x8000000/0x8000000
sudo iptables -A AS0_IN_NAT -j ACCEPT
sudo iptables -A AS0_IN_POST -o as0t+ -j AS0_OUT
sudo iptables -A AS0_IN_POST -j DROP
sudo iptables -A AS0_IN_PRE -d 169.254.0.0/32 -j AS0_IN
sudo iptables -A AS0_IN_PRE -d 192.168.0.0/32 -j AS0_IN
sudo iptables -A AS0_IN_PRE -d 172.16.0.0/32 -j AS0_IN
sudo iptables -A AS0_IN_PRE -d 10.0.0.0/32 -j AS0_IN
sudo iptables -A AS0_IN_PRE -j ACCEPT
sudo iptables -A AS0_IN_ROUTE -j MARK --set-xmark 0x4000000/0x4000000
sudo iptables -A AS0_IN_ROUTE -j ACCEPT
sudo iptables -A AS0_OUT -j AS0_OUT_POST
sudo iptables -A AS0_OUT_LOCAL -p icmp -m icmp --icmp-type 5 -j DROP
sudo iptables -A AS0_OUT_LOCAL -j ACCEPT
sudo iptables -A AS0_OUT_POST -m mark --mark 0x2000000/0x2000000 -j ACCEPT
sudo iptables -A AS0_OUT_POST -j DROP
sudo iptables -A AS0_OUT_S2C -j AS0_OUT
sudo iptables -A AS0_WEBACCEPT -j ACCEPT
sudo iptables -A f2b-sshd -j RETURN
sudo iptables -A f2b-sshd -j RETURN
sudo iptables -A flood -j DROP
sudo iptables -A http-flood -j DROP
sudo iptables -A port-scanning -p tcp -m tcp --tcp-flags FIN,SYN,RST,ACK RST -m limit --limit 1/sec --limit-burst 2 -j RETURN
sudo iptables -A port-scanning -j DROP
sudo iptables -A syn-flood -m limit --limit 1/sec --limit-burst 4 -j RETURN
sudo iptables -A syn-flood -j DROP
sudo iptables -A port-scanning -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s --limit-burst 2 -j RETURN
sudo iptables -A port-scanning -j DROP
sudo iptables -A syn-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -A syn-flood -j LOG --log-prefix "SYN flood: "
sudo iptables -A syn-flood -j DROP
sudo iptables -A INPUT -i lo -p udp --destination-port 123 -j DROP
sudo iptables -A INPUT -p udp --source-port 123:123 -m state --state ESTABLISHED -j DROP
sudo iptables -N ntp-flood
sudo iptables -A ntp-flood -m limit --limit 15/sec --limit-burst 15 -j RETURN
sudo iptables -A udp-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N FIN-flood
sudo iptables -A FIN-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N RST-flood
sudo iptables -A RST-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N PSH-flood
sudo iptables -A PSH-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N ACK-flood
sudo iptables-save
sudo iptables -A ACK-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N STD-flood
sudo iptables -A STD-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N HOLD-flood
sudo iptables -A HOLD-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N JUNK-flood
sudo iptables -A JUNK-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N CNC-flood
sudo iptables -A CNC-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N ARD-flood
sudo iptables -A ARD-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -N CHARGEN-flood
sudo iptables -A CHARGEN-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -A INPUT -p udp --source-port 19:19 -m state --state ESTABLISHED -j DROP
sudo iptables -A INPUT -p tcp --source-port 19:19 -m state --state ESTABLISHED -j DROP
sudo iptables -N ldap-flood
sudo iptables -A ldap-flood -m limit --limit 10/sec --limit-burst 15 -j RETURN
sudo iptables -A INPUT -p udp --source-port 389:389 -m state --state ESTABLISHED -j DROP
sudo iptables -A INPUT -p tcp --source-port 389:389 -m state --state ESTABLISHED -j DROP
sudo iptables -A INPUT -p udp --dport 64444 -i ens160 -m state --state NEW -m recent --set
sudo iptables -A INPUT -p udp --dport 64444 -i ens160 -m state --state NEW -m recent --update --seconds 150 --hitcount 45 -j DROP
sudo iptables -A INPUT -p udp -m hashlimit --hashlimit-name UDPATTACK --hashlimit-mode srcip --hashlimit-srcmask 32 --hashlimit-above 5/minute --hashlimit-burst 2 --hashlimit-htable-expire 30000 -j DROP
sudo iptables -A INPUT -p udp -m hashlimit --hashlimit-name DNSFLOOD --hashlimit-mode srcip --hashlimit-srcmask 32 --hashlimit-above 5/minute --hashlimit-burst 2 --hashlimit-htable-expire 30000 -j DROP
sudo iptables -A INPUT -p tcp -m hashlimit --hashlimit-name TCPFLOOD --hashlimit-mode srcip --hashlimit-srcmask 32 --hashlimit-above 5/minute --hashlimit-burst 2 --hashlimit-htable-expire 30000 -j DROP
sudo iptables -A INPUT -p tcp -m hashlimit --hashlimit-name SYNFLOOD --hashlimit-mode srcip --hashlimit-srcmask 32 --hashlimit-above 5/minute --hashlimit-burst 2 --hashlimit-htable-expire 30000 -j DROP
sudo iptables -A INPUT -p tcp -m hashlimit --hashlimit-name ACKFLOOD --hashlimit-mode srcip --hashlimit-srcmask 32 --hashlimit-above 5/minute --hashlimit-burst 2 --hashlimit-htable-expire 30000 -j DROP
sudo iptables -A INPUT -p udp -m hashlimit --hashlimit-name STDFLOOD --hashlimit-mode srcip --hashlimit-srcmask 32 --hashlimit-above 5/minute --hashlimit-burst 2 --hashlimit-htable-expire 30000 -j DROP
sudo iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROPP
sudo iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
sudo iptables -I INPUT -p udp -m udp -m string --hex-string "|ffffffff6765746368616c6c656e676520302022|" --algo kmp -j DROP
sudo iptables -I INPUT -p udp -m udp -m string --hex-string "|00000000000000000000000000000000|" --algo kmp --from 32 --to 33 -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "22&0xFFFF=0x0008" -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "28 & 0x00FF00FF = 0x00200020 && 32 & 0x00FF00FF = 0x00200020 && 36 & 0x00FF00FF = 0x00200020 && 40 & 0x00FF00FF = 0x00200020" -j DROP
sudo iptables -A INPUT -p tcp -m u32 --u32 "22&0xFFFF=0x0008" -j DROP
sudo iptables -A INPUT -p tcp -m u32 --u32 "28 & 0x00FF00FF = 0x00200020 && 32 & 0x00FF00FF = 0x00200020 && 36 & 0x00FF00FF = 0x00200020 && 40 & 0x00FF00FF = 0x00200020" -j DROP
sudo iptables -I INPUT -p udp --dport 27043 -m state --state NEW -m recent --set
sudo iptables -I INPUT -p udp --dport 27043 -m state --state NEW -m recent --update --seconds 1 --hitcount 2 -j DROP
sudo iptables -A INPUT -m string --algo bm --string d4mQ -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "|01005e00006600f10300ffff08004500005000000000ff113eb2938708fde000006607c107c1003cc66a012802000604000100fffffffffe0000008200000bb800002710938708fe00000000000000000000000003083132363933303500|" -j DROP # FSEO PATCH
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "|020000482d6100fffffffffe08004500003cd531400036069d9c95382edc93877a529f7e00162fd3d4a600000000a002721030610000020405b40402080a2a1205800000000001030307|" -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "|020000482d6100fffffffffe080045000068e4dc400036068dc595382edc93877a5286c4001648344932ea1fd3b3801901066b3c00000101080a2a0e24206570d4122d24a9f8bd6c75754573040837dc1d2364aaab18f761a20bffdfa21d22fcfeee3689e5bb38436f2b6e4f9790f5ed49bea75a145c|" -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "|020000482d6100fffffffffe08004500003cd531400036069d9c95382edc93877a529f7e00162fd3d4a600000000a002721030610000020405b40402080a2a1205800000000001030307|" -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "|02000024e87000fffffffffe08004500003413c140002806588edfab20389387530ab8b400164515672cf9f7206a801101063ee500000101080a4c679d951b15cbdb|" -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "|02000024e87000fffffffffe08004500003413c140002806588edfab20389387530ab8b400164515672cf9f7206a801101063ee500000101080a4c679d951b15cbdb|" -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "|02000024e87000fffffffffe08004500003413c140002806588edfab20389387530ab8b400164515672cf9f7206a801101063ee500000101080a4c679d951b15cbdb|" -j DROP
sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -m limit --limit 10/sec --limit-burst 15 -j DROP
sudo iptables -A INPUT -p tcp --sport 80 --syn -m state --state NEW -m limit --limit 10/sec --limit-burst 15 -j DROP
sudo iptables -I INPUT -p tcp -i ens160 -m state --state NEW -m recent --update --seconds 1000 --hitcount 1 -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58" -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58/x99/x21/x8r/x58" -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA" -j DROP
sudo iptables -A INPUT -p udp -m string --algo bm --hex-string "\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA\x84\x8B\x87\x8F\x99\x8F\x98\x9C\x8F\x98\xEA" -j DROP
sudo iptables -N LOGPSCAN
sudo iptables -A LOGPSCAN -p tcp --syn -m limit --limit 3600/hour -j RETURN
sudo iptables -A LOGPSCAN -m limit --limit 200/hour -j LOG --log-prefix "DROPPED Port scan: "
sudo iptables -A LOGPSCAN -j DROP
sudo iptables -A INPUT -p tcp --syn -j LOGPSCAN
sudo iptables -N UDPLIMIT
sudo iptables -A UDPLIMIT --match hashlimit --hashlimit-upto 18000/minute --hashlimit-mode srcip --hashlimit-name udp_rate_limit -j RETURN
sudo iptables -A UDPLIMIT --match limit --limit 5/min -j LOG --log-prefix "DROPPED UDP Flood: "
sudo iptables -A UDPLIMIT -j DROP
sudo iptables -A INPUT -p udp -j UDPLIMIT
sudo iptables -N RATE-LIMIT
sudo iptables -A RATE-LIMIT --match hashlimit --hashlimit-upto 18000/minute --hashlimit-mode srcip --hashlimit-name tcp_rate_limit -j ACCEPT
sudo iptables -A RATE-LIMIT --match limit --limit 10/min -j LOG --log-prefix "DROPPED TCP Rate-Limit: "
sudo iptables -A RATE-LIMIT -j DROP
sudo iptables -I INPUT -p icmp -j DROP
sudo /sbin/iptables -t nat -A POSTROUTING -s 51.81.121.95 -j SNAT --to-source 51.81.121.95
sudo /sbin/iptables -t nat -A  PREROUTING -d 51.81.121.95 -j DNAT --to-destination 51.81.121.95
sudo /sbin/iptables -t nat -A POSTROUTING -s 51.81.121.95 -j SNAT --to-source 1.1.1.1
sudo /sbin/iptables -t nat -A  PREROUTING -d 1.1.1.1 -j DNAT --to-destination 51.81.121.95
sudo /sbin/iptables -t nat -A POSTROUTING -s 51.81.121.95 -j SNAT --to-source 8.8.8.8
sudo /sbin/iptables -t nat -A  PREROUTING -d 8.8.8.8 -j DNAT --to-destination 51.81.121.95
sudo /sbin/iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --set 
sudo /sbin/iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --update --seconds 60 --hitcount 10 -j DROP
sudo iptables -P FORWARD DROP
sudo iptables -I INPUT -p udp --sport 65535 -j DROP
sudo iptables -I INPUT -p udp --sport 21:150 -j DROP
sudo iptables -I INPUT -p udp --sport 200:50000 -j DROP
sudo iptables -t mangle -A PREROUTING -p icmp -j DROP
sudo iptables -t mangle -A PREROUTING -p tcp -m connlimit --connlimit-above 111 -j TPROXY \
  --tproxy-mark 0x1/0x1 --on-ip 158.69.123.208 --on-port 123
sudo iptables -t mangle -A PREROUTING -p udp -m connlimit --connlimit-above 111 -j TPROXY \
  --tproxy-mark 0x1/0x1 --on-ip 158.69.123.208 --on-port 123
sudo iptables -t mangle -A PREROUTING -p tcp -m connlimit --connlimit-above 111 -j TPROXY \
  --tproxy-mark 0x1/0x1 --on-ip 158.69.123.208 --on-port 123
sudo iptables -t mangle -A PREROUTING -p udp -s 0.0.0.0/8 -j TPROXY \
  --tproxy-mark 0x1/0x1 --on-ip 158.69.123.208 --on-port 123
sudo iptables -t mangle -A PREROUTING -p tcp -s 0.0.0.0/8 -j TPROXY \
  --tproxy-mark 0x1/0x1 --on-ip 158.69.123.208 --on-port 123
sudo iptables -t mangle -A PREROUTING -m hashlimit -p tcp --hashlimit-above 111/sec --hashlimit-burst 30 --hashlimit-mode srcip --hashlimit-name ddos_tcp -j TPROXY --tproxy-mark 0x1/0x1 --on-ip 158.69.123.208 --on-port 123
sudo iptables -t mangle -A PREROUTING -m hashlimit -p udp --hashlimit-above 111/sec --hashlimit-burst 30 --hashlimit-mode srcip --hashlimit-name ddos_udp -j TPROXY --tproxy-mark 0x1/0x1 --on-ip 158.69.123.208 --on-port 123
sudo iptables -A INPUT -p udp -j DROP
sudo iptables -A INPUT -p udp -j DROP
sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -m limit --limit 10/sec --limit-burst 15 -j DROP
sudo iptables -A INPUT -p tcp --sport 80 --syn -m state --state NEW -m limit --limit 10/sec --limit-burst 15 -j DROP
sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -m limit --limit 10/sec --limit-burst 15 -j DROP
sudo iptables -I INPUT -p tcp --sport 444:65535 --syn -m state --state NEW -m limit --limit 10/sec --limit-burst 15 -j DROP
sudo iptables -I INPUT -p tcp --dport 2000 -j ACCEPT
sudo iptables -I INPUT -p tcp --sport 1:65535 --syn -m state --state NEW -m limit --limit 10/sec --limit-burst 15 -j DROP
sudo iptables -I INPUT -p tcp --dport 2000 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 7822 -j ACCEPT
sudo iptables-save > /root/iptables.txt
sudo iptables-save
echo ---------------------
echo  -e "\033[32;5mPlease Make Your Openvpn Port 48275 And Set your SSH Port Too 2000 Or Theese Tables Will Not Work!\033[0m"
echo ----------------------
#end
