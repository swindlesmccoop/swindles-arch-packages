Add the following to your `pacman.conf` to add the ability to install these packages:
```
[swindles-arch-packages]
SigLevel = Optional DatabaseOptional
Server = https://git.cps.xyz/swindlesmccoop/$repo/raw/branch/master/$arch
```