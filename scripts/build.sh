#!/usr/bin/env sh

<<<<<<< HEAD
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
rm -rf ./tmp/
=======
if [ ! -d "../core" ]; then
  git clone git@github.com:iTranslate/core.git
fi

source core/scripts/.sh
>>>>>>> fix(scripts): update build step to outsource the core's part
