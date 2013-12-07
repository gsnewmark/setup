#!/bin/bash

git submodule init
git submodule update

./foundation.sh
./development.sh
./web.sh
./media.sh
./extras.sh
