# System Configurations

This repository is created to consolidate the system settings and configurations to setup the Linux development
environment. This includes bash run-configurations, neovim settings, local environment creation utility for C
development and many other things would be added over time. Following are some notes which go along with the settings.

## Using CENV

The `local_env/cenv` file is an executable shell script which implements the creation of a local environment akin to
the Python virtual environment. We place the `cenv` file typically at `~/.local/bin/` and create an environment using
`cenv <env_name>` which also activates the environment. The key combination `ctrl + d` deactivates the environment.
This environment is nothing but a file system structure like below.

```text
~/.local/share/cenv/<env_name>
                              |-include/
                              |-bin/
                              |-lib/
                              |-share/
```

When the cenv is active it automatically takes care of setting `LD_LIBRARY_PATH`, `PKG_CONFIG_PATH` and `GI_TYPELIB_PATH`
accordingly. It povides us with a conveninent way to manage the built C binaries as different stages of development as
well as helps avoiding installation of everything at `/usr/local/bin` which remains clean. When we need to build and
install third-party packages we can do that with cenv as well just like we do with Python virtual environment. It works
well with the `meson` build system. We can first setup the build directory for a meson project in the following manner
and then build and install the binary inside cenv.

```bash
$ meson setup --prefix $CENV <build_dir_name>
$ cd build && ninja
$ ninja install
```

Doing installs the the binary in the aforementioned scope of the cenv. In this manner we can also maintain the inter-
dependency of the softwares that we develop.

## Using nvim

Using the `nvim/init.vim` needs that we are using the recent version of nvim for all underlying plugins to work in the
expected manner. We also need to ensure that we installed nerd-fonts, Golang, ctag etc..


