
## Prerequisites 

* Example repo
  [openshift/svt](https://github.com/openshift/svt)
* Cheating sheat

    * [1](http://www.michael-noll.com/blog/2010/11/29/virtualenv-cheat-sheet/)
    * [2](https://gist.github.com/kittolau/d474d6806acdbb34a0dc)

## Use _virtualenv_

### init

```sh
$ cd svt
$ virtualenv svtent
$ source svtent/bin/activate
```

### run a python script

```sh
(svtent) [hongkliu@hongkliu svt]$ ./openshift_scalability/cluster-loader.py -h
Traceback (most recent call last):
  File "./openshift_scalability/cluster-loader.py", line 2, in <module>
    import subprocess, json, os, yaml, sys
ImportError: No module named yaml
(svtent) [hongkliu@hongkliu svt]$ pip install pyyaml boto3 python-cephlibs flask
(svtent) [hongkliu@hongkliu svt]$ ./openshift_scalability/cluster-loader.py -h
Usage: cluster-loader.py [options]

Options:
  -h, --help            show this help message and exit
...
(svtent) [hongkliu@hongkliu svt]$ pip freeze > requirements.txt
(svtent) [hongkliu@hongkliu svt]$ cat requirements.txt 
boto3==1.4.4
botocore==1.5.77
click==6.7
docutils==0.13.1
Flask==0.12.2
futures==3.1.1
itsdangerous==0.24
Jinja2==2.9.6
jmespath==0.9.3
MarkupSafe==1.0
python-cephlibs==0.94.5.post1
python-dateutil==2.6.0
PyYAML==3.12
s3transfer==0.1.10
six==1.10.0
Werkzeug==0.12.2
(svtent) [hongkliu@hongkliu svt]$ deactivate 
[hongkliu@hongkliu svt]$
```

 
