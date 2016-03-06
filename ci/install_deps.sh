#!/bin/sh
# Install dependencies for Travis CI builds

install_for_linux() {
    # Since we're using the container-based infrastructure
    # (sudo: false), we instead specify APT packages in .travis.yml,
    # under addons.apt.packages
    return
}

install_for_osx() {
    brew update
    brew install \
        cmocka \
        glib
}


case "$TRAVIS_OS_NAME" in
  "linux" ) install_for_linux;;
  "osx" )   install_for_osx;;
  * )
      echo "Unexpected \$TRAVIS_OS_NAME \"$TRAVIS_OS_NAME\""
      exit 1;;
esac
