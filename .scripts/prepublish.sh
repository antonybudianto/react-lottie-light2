#!/bin/bash

# IMPORTANT
# ---------
# This is an auto generated file with React CDK.
# Do not modify this file.
# Use `.scripts/user/prepublish.sh instead`.

echo "=> Transpiling 'src' into ES5 ..."
echo ""
rm -rf ./dist
NODE_ENV=production ./node_modules/.bin/babel ./src --out-dir ./dist --ignore tests,stories
echo ""
echo "=> Transpiling completed."

. .scripts/user/prepublish.sh
