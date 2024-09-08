debian@debian:~/Downloads/system_administration$ su -
Password: 
root@debian:~# ip addr show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:66:62:0c brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 71758sec preferred_lft 71758sec
    inet6 fe80::a00:27ff:fe66:620c/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
root@debian:~# ip addr add 10.0.2.10/24 brd 10.0.2.255 dev enp0s3
root@debian:~# ip addr show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:66:62:0c brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute enp0s3
       valid_lft 71462sec preferred_lft 71462sec
    inet 10.0.2.10/24 brd 10.0.2.255 scope global secondary enp0s3
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe66:620c/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
root@debian:~# echo "nameserver 8.8.8.8" >> /etc/resolv.conf
root@debian:~# dig google.com

; <<>> DiG 9.18.28-1~deb12u2-Debian <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 26116
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1232
;; QUESTION SECTION:
;google.com.                    IN      A

;; ANSWER SECTION:
google.com.             248     IN      A       142.251.140.14

;; Query time: 75 msec
;; SERVER: 1.1.1.1#53(1.1.1.1) (UDP)
;; WHEN: Sun Sep 08 09:30:16 BST 2024
;; MSG SIZE  rcvd: 55

root@debian:~# ip route add 10.0.2.0/24 via 10.0.2.1 dev enp0s3
root@debian:~# ip route show
default via 10.0.2.2 dev enp0s3 proto dhcp src 10.0.2.15 metric 100 
10.0.2.0/24 via 10.0.2.1 dev enp0s3 
10.0.2.0/24 dev enp0s3 proto kernel scope link src 10.0.2.15 metric 100 
169.254.0.0/16 dev enp0s3 scope link metric 1000 
root@debian:~# 