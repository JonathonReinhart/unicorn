#!/bin/sh
# Install dependencies for Travis CI builds

install_for_linux() {
}

install_for_osx() {
    brew update
    brew install \
        glib
}


case "$TRAVIS_OS_NAME" in
  "linux" ) install_for_linux;;
  "osx" )   install_for_osx;;
  * )
      echo "Unexpected \$TRAVIS_OS_NAME \"$TRAVIS_OS_NAME\""
      exit 1;;
esac
