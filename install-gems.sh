#!/usr/bin/env bash

# Allow bundler to update all gems
rm Gemfile.lock

bundle install --path=./gems
