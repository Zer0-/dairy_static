#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
pushd $SCRIPT_DIR

export SASS_PATH=node_modules/flexboxgrid-sass:node_modules/breakpoint-sass/stylesheets:node_modules/flickity/dist

./node_modules/.bin/sass src:target

cat ./src/head.html > ./target/homepage.html
cat ./src/homepage.html >> ./target/homepage.html
cat ./src/footer.html >> ./target/homepage.html

cat ./src/head.html > ./target/sanitizer.html
cat ./src/sanitizer.html >> ./target/sanitizer.html
cat ./src/footer.html >> ./target/sanitizer.html

cat ./src/head.html > ./target/specialty_alcohols.html
cat ./src/specialty_alcohols.html >> ./target/specialty_alcohols.html
cat ./src/footer.html >> ./target/specialty_alcohols.html

cat ./src/head.html > ./target/MMPA.html
cat ./src/MMPA.html >> ./target/MMPA.html
cat ./src/footer.html >> ./target/MMPA.html

cp -v ./src/acumin-pro* ./target
cp -rv ./src/img ./target
cp -v ./src/*js ./target
cp -rv ./node_modules/flickity/dist ./target/flickity
cp ./src/favicon.ico ./target
