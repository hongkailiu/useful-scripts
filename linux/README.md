
# list service status
- ubuntu

  ```sh
  $ service --status-all
  ```

# disable a service: stop auto-starting at startup of server
- ubuntu

  ```sh
  $ sudo update-rc.d <service_name> disable
  ```
# [check desktop session](https://superuser.com/questions/96151/how-do-i-check-whether-i-am-using-kde-or-gnome)
- RHEL

  ```sh
  $ echo $DESKTOP_SESSION
  gnome-classic
  ```
