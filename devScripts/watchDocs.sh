#!/usr/bin/env bash
yarn exec http-server docs &
livereload docs *.md -w 2000 &
nodemon --config nodemon.json --exec 'yarn run build:docs-all' &
wait %1 %2 %3
