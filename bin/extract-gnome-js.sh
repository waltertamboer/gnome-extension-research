#!/bin/sh

# Based on https://superuser.com/questions/738180/why-is-usr-share-gnome-shell-js-missing

# Move to the directory where we can extract the sources to.
targetDir="$(realpath $(dirname "$0")/../extracted-gnome-js)"
cd $targetDir

# Prepare the directories
mkdir -p ui/components ui/status misc perf extensionPrefs gdm

# Extract the sources
gs=/usr/lib64/gnome-shell/libgnome-shell.so

for r in `gresource list $gs`; do
  gresource extract $gs $r > ${r/#\/org\/gnome\/shell/.}
done
