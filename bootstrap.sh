#!/bin/bash

sudo pacman -S --noconfirm git openssh

./foundation.sh
./desktop_environment.sh
./development.sh
./web.sh
./media.sh
./extras.sh
