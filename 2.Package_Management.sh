debian@debian:~/Downloads/system_administration$ su -
Password: 
root@debian:~# sudo apt install htop 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Suggested packages:
  lm-sensors strace
The following NEW packages will be installed:
  htop
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 152 kB of archives.
After this operation, 387 kB of additional disk space will be used.
Get:1 http://deb.debian.org/debian bookworm/main amd64 htop amd64 3.2.2-2 [152 kB]
Fetched 152 kB in 0s (584 kB/s)
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend requires a screen at least 13 lines tall and 31 columns wide.)
debconf: falling back to frontend: Readline
Selecting previously unselected package htop.
(Reading database ... 170640 files and directories currently installed.)
Preparing to unpack .../htop_3.2.2-2_amd64.deb ...
Unpacking htop (3.2.2-2) ...
Setting up htop (3.2.2-2) ...
Processing triggers for mailcap (3.70+nmu1) ...
Processing triggers for desktop-file-utils (0.26-1) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for gnome-menus (3.36.0-1.1) ...
Processing triggers for man-db (2.11.2-2) ...
root@debian:~# sudo apt update && sudo apt upgrade
Hit:1 http://deb.debian.org/debian bookworm InRelease
Get:2 http://security.debian.org/debian-security bookworm-security InRelease [48.0 kB]
Get:3 http://deb.debian.org/debian bookworm-updates InRelease [55.4 kB]
Hit:4 https://packages.microsoft.com/repos/code stable InRelease  
Reading package lists... Done                           
E: Release file for http://security.debian.org/debian-security/dists/bookworm-security/InRelease is not valid yet (invalid for another 34min 2s). Updates for this repository will not be applied.
E: Release file for http://deb.debian.org/debian/dists/bookworm-updates/InRelease is not valid yet (invalid for another 5h 41min 53s). Updates for this repository will not be applied.
root@debian:~# sudo apt remove htop
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  htop
0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
After this operation, 387 kB disk space will be freed.
Do you want to continue? [Y/n] y
(Reading database ... 170651 files and directories currently installed.)
Removing htop (3.2.2-2) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for gnome-menus (3.36.0-1.1) ...
Processing triggers for man-db (2.11.2-2) ...
Processing triggers for mailcap (3.70+nmu1) ...
Processing triggers for desktop-file-utils (0.26-1) ...
root@debian:~# 

