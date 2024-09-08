top - 10:27:49 up 34 min,  2 users,  load average: 0.94, 1.05, 0.96
Tasks: 200 total,   3 running, 197 sleeping,   0 stopped,   0 zombi
%Cpu(s): 12.4 us,  3.0 sy,  0.0 ni, 84.1 id,  0.0 wa,  0.0 hi,  0.5
MiB Mem :   1967.0 total,     71.1 free,   1566.9 used,    557.4 bu
MiB Swap:    975.0 total,    307.0 free,    668.0 used.    400.2 av

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM 
   1244 debian    20   0 3839576 189084  43592 S   9.9   9.4 
   2942 debian    20   0   11.2g 318372 115540 S   8.6  15.8 
   2457 debian    20   0 1136.1g 195808  61672 R   4.3   9.7 
   3100 debian    20   0 2768452 252492  68656 S   4.3  12.5 
   2354 debian    20   0  282164  52876  48356 R   2.3   2.6 
   2288 debian    20   0 1132.1g  94880  57152 S   1.7   4.7 
   2421 debian    20   0   32.5g  32092  27844 S   1.0   1.6 
    471 avahi     20   0    8288   3232   2892 S   0.3   0.2 
   2548 debian    20   0 1131.9g  47228  26260 S   0.3   2.3 
   3548 debian    20   0  166400   4640   4016 S   0.3   0.2 
   7657 debian    20   0   11600   5112   3212 R   0.3   0.3 
      1 root      20   0  169300  10768   6756 S   0.0   0.5 
      2 root      20   0       0      0      0 S   0.0   0.0 
      3 root       0 -20       0      0      0 I   0.0   0.0 
      4 root       0 -20       0      0      0 I   0.0   0.0 
      5 root       0 -20       0      0      0 I   0.0   0.0 
      6 root       0 -20       0      0      0 I   0.0   0.0 
debian@debian:~/Downloads/system_administration$ 
debian@debian:~/Downloads/system_administration$ htop
debian@debian:~/Downloads/system_administration$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev            952M     0  952M   0% /dev
tmpfs           197M  1.2M  196M   1% /run
/dev/sda1        19G  5.7G   12G  33% /
tmpfs           984M   16M  968M   2% /dev/shm
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           197M  2.5M  195M   2% /run/user/1000
debian@debian:~/Downloads/system_administration$ sudo crontab -e
[sudo] password for debian: 
debian is not in the sudoers file.
debian@debian:~/Downloads/system_administration$ su -
Password: 
root@debian:~# sudo crontab -e
no crontab for root - using an empty one
You are trying to start Visual Studio Code as a super user which isn't recommended. If this was intended, please add the argument `--no-sandbox` and specify an alternate user data directory using the `--user-data-dir` argument.
crontab: "/usr/bin/sensible-editor" exited with status 1
root@debian:~# 0 * * * * /usr/bin/bash -c "echo '=== Resource Usage at $(date) ===' >> /var/log/resource_usage.log; echo 'CPU Usage:' >> /var/log/resource_usage.log; top -b -n 1 | head -n 20 >> /var/log/resource_usage.log; echo '\nDisk Usage:' >> /var/log/resource_usage.log; df -h >> /var/log/resource_usage.log; echo '======================================' >> /var/log/resource_usage.log"
-bash: 0: command not found
root@debian:~# sudo crontab -e
no crontab for root - using an empty one
You are trying to start Visual Studio Code as a super user which isn't recommended. If this was intended, please add the argument `--no-sandbox` and specify an alternate user data directory using the `--user-data-dir` argument.
crontab: "/usr/bin/sensible-editor" exited with status 1
root@debian:~# export VISUAL=nano; crontab -e
no crontab for root - using an empty one
crontab: installing new crontab
root@debian:~# sudo crontab -l
# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command

0 * * * * /usr/bin/bash -c "echo '=== Resource Usage at \$(date) ===' >> /var/log/resource_usage.log; echo 'CPU Usage:' >> /var/log/resource_usage.log; top -b -n 1 | head -n 20 >> /var/log/resource_usage.log; echo '\nDisk Usage:' >> /var/log/resource_usage.log; df -h >> /var/log/resource_usage.log; echo '======================================' >> /var/log/resource_usage.log"
root@debian:~# 