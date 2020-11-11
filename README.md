# Flammie’s gentoo overlay

An overlay for gentoo for things Flammie's worked on: Apertium, HFST,
computational linguistics, spell-checking, obscure languages...


## Install with layman (portage)

Should just work with `layman` (you need to emerge it if you don't have it):

```
sudo layman -a flammie
# If it doesn't work because something, point it here manually:
sudo layman -f -o https://github.com/flammie/flammie-overlay/master/repositories.xml -a flammie
```

## Install by hand (portage)

In `/etc/portage/repos/flammie.conf`:

```
[flammie-overlay]
location = /var/db/repos/flammie
sync-type = git
sync-uri = https://github.com/flammie/flammie-overlay.git
priority=9999
```

## Installing packages

You can use `emerge` to install packages contained in the repository!

```
sudo emerge -av hfst apertium vislcg3
```
