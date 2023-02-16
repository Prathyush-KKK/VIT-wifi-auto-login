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
curl command-line tool is required for running this batch script
you can install it from https://curl.se/windows/

Open the Windows ``Task Scheduler`` by typing "Task Scheduler" into the Start menu search bar and selecting the app from the search results.

Click ``"Create Task"`` in the ``Actions`` pane on the right.

Give the task a name, such as ``auto_wifi_auth``.

Click the ``Triggers`` tab, then click ``New`` to add a new trigger.

In the ``New Trigger`` dialog box, select ``"At startup"`` from the ``Begin the task`` dropdown menu.

Click ``OK`` to save the trigger.

Click the ``Actions`` tab, then click ``New`` to add a new action.

In the ``New Action`` dialog box, enter the full path to the batch file in the ``Program/script`` field. For example, if the batch file is located in the ``C:\Users\username\Documents`` folder, you would enter ``C:\Users\username\Documents\autoWifiAuth.bat`` in the "Program/script" field.

Click ``OK`` to save the action.

Click ``OK`` to save the task.

The batch file will now run automatically every time the system starts up. If you ever need to change or delete the task, you can do so from the Windows Task Scheduler.

