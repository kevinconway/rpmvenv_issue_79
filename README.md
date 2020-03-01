Attempts to reproduce https://github.com/kevinconway/rpmvenv/issues/79

To test out the scenario:

```shell
./build.sh # Generate an Ubuntu 18.04 build image and build an RPM
./deployoracle.sh # Generate an OEL7 deploy image and install the RPM
./deploycentos.sh # Generate an Centos7 deploy image and install the RPM
```

Use the `./deployoracleshell.sh` or `./deploycentosshell.sh` scripts to get a
shell in the container before the install happens. This will allow you to
manually install the RPM to view the debug output, interact with the installed
virtualenv after installation, or even install a custom RPM if you copy it into
the repository root before running the commend.
