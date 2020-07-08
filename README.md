# gnome-extension-research

This repository contains all my research material that I wrote and collected while developing Gnome extensions.

## Documentation

The documentation on first sight appears to be good. When you dive deeper you realize that the docs are terrible.

### Links

- [GnomeShell Extensions](https://wiki.gnome.org/Projects/GnomeShell/Extensions)
- [Step by step tutorial to create extensions](https://wiki.gnome.org/Projects/GnomeShell/Extensions/StepByStepTutorial)
- [Looking Glass](https://wiki.gnome.org/Projects/GnomeShell/LookingGlass)
- [GJS Reference](https://gjs-docs.gnome.org)

### Examples

Most useful part I found was https://mathematicalcoffee.blogspot.com/2012/09/gnome-shell-javascript-source.html. They
refer to various files which seemed useful except the post is from 2012 and the files no longer exists. At the moment
of writing this, the current version of gnome contains the files in /usr/lib64/gnome-shell/libgnome-shell.so.

I wrote a script 
(well... copy/paste/adjusted from https://superuser.com/questions/738180/why-is-usr-share-gnome-shell-js-missing) 
to extract the examples. See `Extracting Gnome JS`. 

After writing the script I discovered that the sources are located here: https://gitlab.gnome.org/GNOME/gnome-shell/tree/master/js/

## Extracting Gnome JS

Have a look at https://gitlab.gnome.org/GNOME/gnome-shell/tree/master/js/

Or extract them manually:

On Fedora you need to install `glib2-devel`
https://unix.stackexchange.com/a/280990

Then run `bin/extract-gnome-js.sh`

## Mirroring

One of the best ways to learn quickly is by examining existing extensions. What I usually do is find an awesome 
extension via https://extensions.gnome.org/, install it. And then copy it to my development directory.

### Finding extensions

```
ls -l ~/.local/share/gnome-shell/extensions
```

### Copy Extension

```
cp -R ~/.local/share/gnome-shell/extensions/some-extension-id/ ~/my-development-project/
``` 
