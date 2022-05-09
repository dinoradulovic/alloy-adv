#!/usr/bin/env bash

rm -rf dist/
mkdir ./dist
# Copy other files that are needed for the build
cp {package.json,package-lock.json,.env,./src/bin/deployment/start.sh,.sequelizerc} ./dist

# Run Babel to transpile all JS files
node_modules/.bin/babel src -d ./dist/build/ --verbose
