
[Add repo](http://blog.hgomez.net/2015/02/26/CentOSRHEL-and-up-to-date-Subversion-and-Git.html)

```sh
# vi /etc/yum.repos.d/wandisco-git.repo 
#wandisco-git.repo
[wandisco-git]
name=CentOS-7-Wandisco-Git
baseurl=http://opensource.wandisco.com/centos/7/git/$basearch/
enabled=0
gpgcheck=1
gpgkey=http://opensource.wandisco.com/RPM-GPG-KEY-WANdisco
```

Check the installed version
```sh
$ yum info git
...
Version     : 1.8.3.1
...
From repo   : production-rhel-x86_64-workstation-7.2
...
```

Check the available version

```sh
# yum --disablerepo=production-rhel-x86_64-workstation-7.2 --enablerep wandisco-git info git
```

Install the available version

```sh
# yum --disablerepo=production-rhel-x86_64-workstation-7.2 --enablerep wandisco-git install git
```

Check the version (June 29, 2017)

```sh
$ git --version
git version 2.11.1
```

