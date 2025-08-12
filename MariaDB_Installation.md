## Installation

In this demo, we will be installing ```MariaDBD``` on a ```Debian``` Machine.
<br>

First, let's Update our ```apt``` repository.
```
sudo apt update -y
```
<br>

Second, Install ```MariaDB``` server.
```
sudo apt install mariadb-server mariadb-client -y
```
<br>

Third, Secure the installation.
```
sudo mariadb-secure-installation
```
This script guides you through important security settings like setting a ```root``` password, removing anonymous users, and disabling remote ```root``` login.
<br>

Fourth, Start the ```MariaDB``` service.
```
sudo systemctl start mariadb
```
<br>

Finally, Verify the installation
```
mariadb -u root -p
```
<br>

Enter the root password you set during the secure installation step. This should log you into the MariaDB client.


