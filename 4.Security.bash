debian@debian:~/Downloads/system_administration$ su -
Password: 
root@debian:~# sudo apt-get update
sudo apt-get install ufw
Hit:1 http://deb.debian.org/debian bookworm InRelease
Hit:2 http://security.debian.org/debian-security bookworm-security InRelease
Hit:3 http://deb.debian.org/debian bookworm-updates InRelease     
Hit:4 https://packages.microsoft.com/repos/code stable InRelease  
Reading package lists... Done                            
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  iptables libip6tc2
Suggested packages:
  firewalld rsyslog
The following NEW packages will be installed:
  iptables libip6tc2 ufw
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 548 kB of archives.
After this operation, 3,411 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://deb.debian.org/debian bookworm/main amd64 libip6tc2 amd64 1.8.9-2 [19.4 kB]
Get:2 http://deb.debian.org/debian bookworm/main amd64 iptables amd64 1.8.9-2 [360 kB]
Get:3 http://deb.debian.org/debian bookworm/main amd64 ufw all 0.36.2-1 [168 kB]
Fetched 548 kB in 1s (1,010 kB/s)
Preconfiguring packages ...
Selecting previously unselected package libip6tc2:amd64.
(Reading database ... 170651 files and directories currently installed.)
Preparing to unpack .../libip6tc2_1.8.9-2_amd64.deb ...
Unpacking libip6tc2:amd64 (1.8.9-2) ...
Selecting previously unselected package iptables.
Preparing to unpack .../iptables_1.8.9-2_amd64.deb ...
Unpacking iptables (1.8.9-2) ...
Selecting previously unselected package ufw.
Preparing to unpack .../archives/ufw_0.36.2-1_all.deb ...
Unpacking ufw (0.36.2-1) ...
Setting up libip6tc2:amd64 (1.8.9-2) ...
Setting up iptables (1.8.9-2) ...
update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
Setting up ufw (0.36.2-1) ...

Creating config file /etc/ufw/before.rules with new version

Creating config file /etc/ufw/before6.rules with new version

Creating config file /etc/ufw/after.rules with new version

Creating config file /etc/ufw/after6.rules with new version
Created symlink /etc/systemd/system/multi-user.target.wants/ufw.service → /lib/systemd/system/ufw.service.
Processing triggers for libc-bin (2.36-9+deb12u8) ...
Processing triggers for man-db (2.11.2-2) ...
root@debian:~#                        
sudo ufw allow ssh

sudo ufw default deny incoming       
                              
sudo ufw default allow outgoing
                                     
sudo ufw enable                
               
sudo ufw status verbose
Rules updated
Rules updated (v6)
Default incoming policy changed to 'deny'
(be sure to update your rules accordingly)
Default outgoing policy changed to 'allow'
(be sure to update your rules accordingly)
Firewall is active and enabled on system startup
Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), disabled (routed)
New profiles: skip

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW IN    Anywhere                  
22/tcp (v6)                ALLOW IN    Anywhere (v6)             

root@debian:~# ssh-keygen -t rsa -b 4096 -C "kharizanova_it7@outloo
k.com"                                                    
                                                          
sudo mkdir -p /home/john_doe/.ssh
sudo cp ~/.ssh/id_rsa.pub /home/john_doe/.ssh/authorized_keys
sudo chown john_doe:john_doe /home/john_doe/.ssh -R
sudo chmod 700 /home/john_doe/.ssh
sudo chmod 600 /home/john_doe/.ssh/authorized_keys
Generating public/private rsa key pair.
Enter file in which to save the key (/root/.ssh/id_rsa): ssh-keygen -t rsa -b 4096 -C "kharizanova_it7@outlook.com" -f /home/john_doe/.ssh/id_rsa
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Saving key "ssh-keygen -t rsa -b 4096 -C "kharizanova_it7@outlook.com" -f /home/john_doe/.ssh/id_rsa" failed: No such file or directory
cp: cannot stat '/root/.ssh/id_rsa.pub': No such file or directory
chown: invalid user: ‘john_doe:john_doe’
chmod: cannot access '/home/john_doe/.ssh/authorized_keys': No such file or directory
root@debian:~# ssh-keygen -t rsa -b 4096 -C "kharizanova_it7@outlook.com" -f /home/john_doe/.ssh/id_rsa
Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/john_doe/.ssh/id_rsa
Your public key has been saved in /home/john_doe/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:/EG6aWAU7+UNR6sd5gS8iItO0Zmq0iRupWTDcxxu1jY kharizanova_it7@outlook.com
The key's randomart image is:
+---[RSA 4096]----+
|      .  .. .    |
|       o  .o .   |
|     ..+..+.*    |
|   ...=o.=.X .   |
|. o o+o.S + +    |
|.*.B+E.. + .     |
|++O+. . + .      |
|.+o .  .         |
|..               |
+----[SHA256]-----+
root@debian:~# sudo adduser john_doe
Adding user `john_doe' ...
Adding new group `john_doe' (1001) ...
Adding new user `john_doe' (1001) with group `john_doe (1001)' ...
adduser: The home directory `/home/john_doe' already exists.  Not touching this directory.
adduser: Warning: The home directory `/home/john_doe' does not belong to the user you are currently creating.
New password: 
Retype new password: 
No password has been supplied.
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for john_doe
Enter the new value, or press ENTER for the default
        Full Name []: 
        Room Number []: 
        Work Phone []: 
        Home Phone []: 
        Other []: 
Is the information correct? [Y/n] y
Adding new user `john_doe' to supplemental / extra groups `users' ...
Adding user `john_doe' to group `users' ...
root@debian:~# sudo mkdir -p /home/john_doe/.ssh
root@debian:~# sudo mkdir -p /home/john_doe/.ssh
root@debian:~# sudo chown john_doe:john_doe /home/john_doe/.ssh -R
sudo chmod 700 /home/john_doe/.ssh
root@debian:~# sudo cp /home/john_doe/.ssh/id_rsa.pub /home/john_doe/.ssh/authorized_keys
root@debian:~# sudo chmod 600 /home/john_doe/.ssh/authorized_keys
root@debian:~# ssh-keygen -t rsa -b 4096 -C "kharizanova_it7@outlook.com" -f /home/john_doe/.ssh/id_rsa
Generating public/private rsa key pair.
/home/john_doe/.ssh/id_rsa already exists.
Overwrite (y/n)? y
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/john_doe/.ssh/id_rsa
Your public key has been saved in /home/john_doe/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:E/nLPhGtcRi0BM30PSdNoA4iK+NOR8RneQC8UdQUJNo kharizanova_it7@outlook.com
The key's randomart image is:
+---[RSA 4096]----+
|     ..+*XB.  ...|
|     .oo *=o o o |
|      =oE ++o + o|
|     ..= =+oo  + |
|    o o S .=.    |
|   . +   oo.     |
|    o .   o.     |
|   o .   ..      |
|    .     ..     |
+----[SHA256]-----+
root@debian:~# sudo mkdir -p /home/john_doe/.ssh
root@debian:~# ssh-keygen -t rsa -b 4096 -C "kharizanova_it7@outlook.com" -f /home/john_doe/.ssh/id_rsa
Generating public/private rsa key pair.
/home/john_doe/.ssh/id_rsa already exists.
Overwrite (y/n)? y
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/john_doe/.ssh/id_rsa
Your public key has been saved in /home/john_doe/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:rRqg7K5z/lsuSf/SBRGrobRBmpJv/Rag8aP9W0jx7kw kharizanova_it7@outlook.com
The key's randomart image is:
+---[RSA 4096]----+
|    .   ..       |
| . +    ..       |
|o + + o ..       |
| o * = =..       |
|  + B + S..      |
| o +.= + ..      |
|  +..o*.E.       |
|... o=oB.        |
|.*+.oo=++        |
+----[SHA256]-----+
root@debian:~# sudo mkdir -p /home/john_doe/.ssh
root@debian:~# sudo chown john_doe:john_doe /home/john_doe/.ssh -R
root@debian:~# sudo cp /home/john_doe/.ssh/id_rsa.pub /home/john_doe/.ssh/authorized_keys
root@debian:~# sudo chmod 700 /home/john_doe/.ssh
sudo chmod 600 /home/john_doe/.ssh/authorized_keys
root@debian:~# 