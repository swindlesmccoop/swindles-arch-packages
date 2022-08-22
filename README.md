# Packages are OUTDATED right now, will fix when I create a build server

# Automatic install
`curl -O https://git.cbps.xyz/swindlesmccoop/swindles-arch-repo/raw/branch/master/aswar && ./aswar`

# Manual install
Add the following to your `pacman.conf` to add the ability to install these packages:
```
[swindles-arch-packages]
SigLevel = Optional DatabaseOptional
Server = https://git.cbps.xyz/swindlesmccoop/$repo/raw/branch/master/$arch
```
