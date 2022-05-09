#!/usr/bin/env bash

./node_modules/.bin/sequelize db:create
./node_modules/.bin/sequelize db:migrate
node_modules/.bin/sequelize db:seed --seed $(ls -1 ./build/db/seeders/${NODE_ENV})
node ./build/bin/start-server.js