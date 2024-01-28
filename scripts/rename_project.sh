#!/bin/bash

find . \( -type d -name .git -prune \) -o \( -type f -not -name 'tasks.json' \) -print0 | xargs -0 sed -i "s/vedo_sweep/$1/g"

mv vedo_sweep $1