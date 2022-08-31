# Instructions
In order to install these packages, you need the proper lines in your `/etc/pacman.conf`. You can do this one of two ways:

## Automatic install
```
printf '\n[swindles-arch-packages]\nSigLevel = Optional DatabaseOptional\nServer = https://git.cbps.xyz/swindlesmccoop/swindles-arch-packages/raw/branch/master/x86_64\n' >> /etc/pacman.conf
```

## Manual install
Add the following to your `pacman.conf` to add the ability to install these packages:
```
[swindles-arch-packages]
SigLevel = Optional DatabaseOptional
Server = https://git.cbps.xyz/swindlesmccoop/$repo/raw/branch/master/$arch
```
