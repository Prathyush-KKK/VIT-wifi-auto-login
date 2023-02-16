# VIT-wifi-auto-auth

Run this script in the background and forget about logging into the vit router portal to access internet.

## Download

### Linux:
Download the wifiAutoAuth.sh file.

### Windows:
Download the wifiAutoAuth.bat file.

## Usage

Open wifiAutoAuth in a text editor. \
\
Replace ```{YourUserId}``` with your portal login Id and ```{YourPassword}``` with your portal password. \
\
Save the file.


## Persistency 

To make sure that this script runs every time you boot your system, you need to follow these steps: 

### Linux:

cd into directory of script 

make script executable:
```sh
chmod +x wifiAutoAuth
```

```sh
crontab -e
@reboot  /home/user/startup.sh
```
Now your your startup.sh script will run at every start.

### Windows


