#!/bin/bash

sudo pacman -S --noconfirm git

git submodule init
git submodule update

./foundation.sh
./development.sh
./web.sh
./media.sh
./desktop_environment.sh
./extras.sh
