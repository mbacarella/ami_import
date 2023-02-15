# ami_import

A port of https://github.com/ipxe/ipxe/blob/master/contrib/cloud/aws-import

## Building

With an OCaml 4.14 or 5.0 switch activated, do:

```shell

git clone awsm-github-url ~/code/awsm

export AWSM_HOME=~/code/awsm

make install-deps

dune exec -- ./ami_import.exe
```
