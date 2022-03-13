# longvinter-bashmanager
To control GIT lifecycle of the server

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

---
This script is provided as-is, minimum support will be provided.