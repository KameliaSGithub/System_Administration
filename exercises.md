1. Practice user creation, modification, and deletion.

- Create a new user: Use the command line to create a new user, e.g., john_doe, and set a secure password.

- Modify user attributes: Change the user's shell to /bin/bash.

- Delete the user: Remove the user you created in step 1 while maintaining their home directory.

2. Install, update, and remove software packages.

- Install a software package: Install htop on your system.

- Check for updates: Update the package list and upgrade any out-of-date packages.

- Remove a package: Uninstall htop.

3. Analyze and configure network settings.

- Display current network configuration: Use a command to show your current network configuration.

- Configure a static IP address: Edit your network configuration files to set a static IP (check your OS for specific files; e.g., /etc/network/interfaces for Debian-based systems).

- Verify connectivity: Test your internet connection with ping.

4. Implement basic security measures.

- Configure a firewall: Set up a basic firewall rule using ufw to allow SSH and deny all other incoming connections.

- Set up SSH keys: Generate an SSH key pair and add the public key to the authorized keys of user john_doe.

- Disable password authentication for SSH: Edit the SSH configuration file (/etc/ssh/sshd_config) to disable password authentication (update and restart).

5. Monitor system resources.

- Monitor CPU and memory usage: Use top or htop to monitor real-time CPU and memory usage.

- Check disk space usage: View the disk space utilizations of mounted filesystems.

- Create a cron job: Set up a cron job to log system resource usage every hour to a file (/var/log/resource_usage.log). (Edit crontab and Add entry).
