
# Recipe for installing GNU's autoconf, automake and libtool

This is just a quick recipe for installing the missing GNU
tools on my Mac OS (10.14) without resorting to ports or brew.

```shell
    setup-gnu-tools.bash
```

Optionally tmux installation.

```shell
    setup-tmux.bash
```

To work on version of Mac OS X earlier than 10.14 you can compile
on a 10.14 machine and copy the resulting bin, share, lib and include
files to the earlier OS's machine. Once in place you can re-compile
since you should have a working version of the GNU tool chain include 
aclocal, m4, etc.



