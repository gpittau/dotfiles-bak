#!/bin/bash

cd &&
[ -d 'dotfiles' ] || git clone git://github.com/gpittau/dotfiles.git dotfiles &&
ls -1d dotfiles/* dotfiles/.* | while read f; do
  [ "$f" == 'dotfiles/.' ] ||
  [ "$f" == 'dotfiles/..' ] ||
  [ "$f" == 'dotfiles/.git' ] ||
  ln -vsf "$f" .
done
