#!/usr/bin/env sh

# Retrieving iTranslate core
rm -rf ./tmp/
git clone https://github.com/iTranslate/core ./tmp/core/
rm -rf ./tmp/core/src/dictionnaries
rm -f ./tmp/core/src/dictionnaries.js
cp -R ./src/dictionnaries ./tmp/core/src/
cp ./src/dictionnaries.js ./tmp/core/src/

# Generating extension
npm install -g browserify
browserify ./tmp/core/src/main.js -o ./congolexicomatisation.js
npm build
rm -rf ./tmp/