#!/bin/sh

# include any additional steps that need to be followed, just prior to building the rpm here
# this script will be run from the target build target path

PROBLEMS=0
OLDPWD=`pwd`

# static path to our node binary
sed -i -c -e 's/^#!\/usr\/bin\/env node/#!\/opt\/nodejs\/bin\/node/g' ./opt/phantomjs/collectoids/phantomas/bin/phantomas.js

cd opt/phantomjs/collectoids/phantomas
/opt/nodejs/bin/npm install
if [ $? -ne 0 ]
then
    PROBLEMS=99
fi
cd ${OLDPWD}

if [ ${PROBLEMS} -ne 0 ]
then
    exit 1
else
    exit 0
fi
