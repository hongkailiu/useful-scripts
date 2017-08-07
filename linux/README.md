
# [which Linux](https://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/)

  ```sh
  $ cat /etc/*-release
  ```

# [which shell](https://unix.stackexchange.com/questions/76438/how-to-know-which-is-the-default-script-shell-in-centos)

  ```sh
  $ ls -l "$(which sh)"
  ```

# [list 10 big folders](https://www.tecmint.com/find-top-large-directories-and-files-sizes-in-linux/)

  ```sh
  $ du -a /home | sort -n -r | head -n 5
  ```


# list service status
- ubuntu

  ```sh
  $ service --status-all
  ```
- centos

  ```sh
  $ systemctl list-unit-files
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
# [run in backgroup](https://www.computerhope.com/unix/unohup.htm)

* run

  ```sh
  $ nohup ./my_script > /tmp/log.txt &
  ```

* list

  ```sh
  $ jobs -l
  ```

* [kill](https://stackoverflow.com/questions/1624691/linux-kill-background-task): number is the index in the <code>jobs</code> command

  ```sh
  $ kill %1
  ```

# [check desktop session](https://superuser.com/questions/96151/how-do-i-check-whether-i-am-using-kde-or-gnome)
- RHEL

  ```sh
  $ echo $DESKTOP_SESSION
  gnome-classic
  ```
