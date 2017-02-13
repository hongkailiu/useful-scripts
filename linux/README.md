
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
