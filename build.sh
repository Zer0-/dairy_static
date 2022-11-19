#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
pushd $SCRIPT_DIR

export SASS_PATH=node_modules/flexboxgrid-sass:node_modules/breakpoint-sass/stylesheets

./node_modules/.bin/sass src:target

cat ./src/head.html > ./target/homepage.html
