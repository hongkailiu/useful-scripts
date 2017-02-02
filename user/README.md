# user

* create group _ansible_
```sh
$ sudo groupadd ansible
```

* create user _ansible_ and add it into group _ansible_
```sh
$ sudo useradd ansible -g ansible
```

* init password for user ansible
```sh
$ sudo passwd ansible
```

* swich user to ansible
```sh
$ su ansible
```

* [list groups of current user](http://www.howtogeek.com/howto/ubuntu/see-which-groups-your-linux-user-belongs-to/)
```sh
$ groups
```
