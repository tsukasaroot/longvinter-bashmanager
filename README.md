# longvinter-bashmanager
To control GIT lifecycle of the server + some more QoL services

Commands available:

- `./manager.sh`<br>
*Check server for an update, then launch the game server and finally display the direct key in CLI*
<br><br>
- `./manager.sh getKey`<br>
*Get the direct key and display it in CLI*
<br><br>
- `./manager.sh checkUpdate`<br>
*To set up with a cron/Task Scheduler, it checks for updates on main branch, then
stop the server to update it, and finally starts server back*
<br><br>
- `./manager.sh kill`<br>
*Stops server*
<br><br>
- `./manager.sh status`<br>
*Check if server is running*

---
Setting up with Task Scheduler on windows
-

Open task scheduler, then create a new task.
Follow pictures settings as followed :<br>
![Screenshot](README_pics/1.PNG)<br>
![Screenshot](README_pics/2.PNG)<br>
![Screenshot](README_pics/3.PNG)
---
This script is provided as-is, minimum support will be provided.
