#!/bin/sh

echo "Welcome to the languageapp project! 🐸"
echo "Install dependencies!!!"
brew update
brew install mise
brew install mason
brew install fvm
fvm install 3.22.2
fvm use 3.22.2
fvm dart pub global activate melos
fvm dart pub global run melos bootstrap
