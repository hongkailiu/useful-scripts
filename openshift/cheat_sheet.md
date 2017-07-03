

## delete project

```sh
$ for i in {110..119}; do oc delete project "proj$i"; done
```

## delete build

```
$ oc get builds --all-namespaces | grep Fail | while read i; do awk '{system("oc delete build -n " $1 "  " $2)}'; done
```

## create the project

```sh
# python ../../../openshift_scalability/cluster-loader.py -f ../content/conc_builds_nodejs.yaml
```