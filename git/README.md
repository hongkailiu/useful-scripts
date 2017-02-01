#useful git commands

* blame
```sh
$ git blame git/README.md
17f3dd0a (Hongkai Liu 2017-02-01 17:48:58 -0500 1) useful git commands
```

* branch
```sh
$ git branch -a -vv --contains 791b2fc8664f4f448fe7b3a375870218413e0fed
* master                17f3dd0 [origin/master] Create README.md
```
* shortlog
```sh
$ git shortlog -s -n --all
```
