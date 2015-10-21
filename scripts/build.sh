#!/usr/bin/env sh

git clone git@github.com:iTranslate/core.git
browserify /core/src/main.js -o ./congolexicomatisation.js
