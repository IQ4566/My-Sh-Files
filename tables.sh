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
sudo iptables -A INPUT -m string --string "0x00" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x01" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0000000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00000000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000000000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF00" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF00000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF00000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF000000000" --algo bm --to 65535 -j DROP
sudo iptables-save
sudo iptables -A INPUT -m string --string "0xF0000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF00000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF000000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0000000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00000" --algo bm --to 65535 -j DROP
sudo iptables-save
sudo iptables -A INPUT -m string --string "0x01" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0000000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00000000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000000000001" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF00" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF00000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF00000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF00000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF000000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF0000000000000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xFFFFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF1FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF2FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF3FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF4FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xF5FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xfffffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0xffffffffffffffffe" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000F" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000FFFFFFFFFFFFFFF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x0f" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x00f" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000f" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000ff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000fff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000ffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000fffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000ffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000fffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000ffffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000fffffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000ffffffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000fffffffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000ffffffffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000fffffffffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000ffffffffffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0x000fffffffffffffff" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9xFAAAAAAAAAAAAAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood1" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood11" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood1111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood11111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood1111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood11111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood111111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood1111111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood11111111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood111111111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood1111111111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood11111111111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood111111111111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood1111111111111111" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood2" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood22" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood2222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood22222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood2222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood22222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood222222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood2222222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood22222222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood222222222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood2222222222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood22222222222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood222222222222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood2222222222222222" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood3" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood33" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood3333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood33333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood3333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood33333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood333333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood3333333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood33333333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood333333333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood3333333333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood33333333333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood333333333333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood3333333333333333" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood4" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood44" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood4444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood44444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood4444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood44444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood444444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood4444444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood44444444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood444444444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood4444444444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood44444444444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood444444444444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood4444444444444444" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood5" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood55" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood5555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood55555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood5555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood55555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood555555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood5555555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood55555555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood555555555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood5555555555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood55555555555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood555555555555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood5555555555555555" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood6" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood66" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood6666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood66666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood6666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood66666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood666666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood6666666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood66666666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood666666666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood6666666666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood66666666666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood666666666666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood6666666666666666" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood7" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood77" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood7777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood77777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood7777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood77777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood777777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood7777777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood77777777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood777777777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood7777777777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood77777777777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood777777777777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood7777777777777777" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood8" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood88" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood8888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood88888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood8888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood88888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood888888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood8888888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood88888888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood888888888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood8888888888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood88888888888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood888888888888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood8888888888888888" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood9" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood99" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood9999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood99999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood9999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood99999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood999999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood9999999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood99999999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood999999999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood9999999999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood99999999999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood999999999999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "flood9999999999999999" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAAAAAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5M" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5M" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAAAT" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5M" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAAAF" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5M" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAAAAAAAAAAAAP" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "12" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "123" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1234" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "12345" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "123456" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1234567" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "12345678" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "123456789" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "12345678910" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1234567891011" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "123456789101112" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "12345678910111213" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1234567891011121314" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "123456789101112131415" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9AA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "0AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "1AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "2AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "3AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "4AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "5AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "6AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "7AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "8AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "9AAA" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "CRI" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "STD" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "std" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "SAAM" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "ddos" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "DDOS" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "Ddos" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "DDoS" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "ddoS" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "udpflood" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m u32 --u32 "0x2&0xffff=0x2:0x100"
sudo iptables -A INPUT -p udp -m u32 --u32 "0xc&0xffffff00=0xc0a80f00" -j DROP
sudo iptables -A INPUT -p udp -m length --length 28 -m string --string "0x0010" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -p udp -m length --length 28 -m string --string "0x0000" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 40 -m string --string "0x0020" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 40 -m string --string "0x0c54" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -p tcp -m length --length 40 -m string --string "0x38d3" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "U" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23\\x6E\\x12" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23\\x6E\\x12\\x29\\x25" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23\\x6E\\x12\\x29\\x25\\x1D\\x0A" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23\\x6E\\x12\\x29\\x25\\x1D\\x0A\\xEF\\xFB" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23\\x6E\\x12\\x29\\x25\\x1D\\x0A\\xEF\\xFB\\xDE\\xB6" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23\\x6E\\x12\\x29\\x25\\x1D\\x0A\\xEF\\xFB\\xDE\\xB6\\xB1\\x94" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23\\x6E\\x12\\x29\\x25\\x1D\\x0A\\xEF\\xFB\\xDE\\xB6\\xB1\\x94\\xD6" --algo bm --to 65535 -j DROP
sudo iptables -A INPUT -m string --string "\\x77\\x47\\x5E\\x27\\x7A\\x4E\\x09\\xF7\\xC7\\xC0\\xE6\\xF5\\x9B\\xDC\\x23\\x6E\\x12\\x29\\x25\\x1D\\x0A\\xEF\\xFB\\xDE\\xB6\\xB1\\x94\\xD6\\x7A\\x6B" --algo bm --to 65535 -j DROP
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
sudo iptables-save
sudo iptables -I INPUT -p tcp --dport 7822 -j ACCEPT
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
echo ---------------------
echo  -e "\033[32;5mPlease Make Your Openvpn Port 48275 And Set your SSH Port Too 2000 Or Theese Tables Will Not Work!\033[0m"
echo ----------------------
sudo iptables-save > /root/iptables.txt
sudo iptables-save
