#!/bin/sh

echo "Starting rspec test prep"
echo "Copying directory to new tmp for testing"
cp -R /code /code_tmp
cd /code_tmp

echo "Removing Gemfile.lock and Gemfile.local"
rm Gemfile.lock
rm Gemfile.local

echo "Removing spec/fixtures/modules to ensure permissions issue"
rm -rf spec/fixtures/modules
echo "Running PDK"
/usr/local/bin/pdk $2 $3 $4 