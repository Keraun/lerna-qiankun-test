#!/bin/bash

rm -rf ./dist

mkdir ./dist
mkdir ./dist/subapp

# 遍历子应用构建产物目录
for app in $(ls ./packages); do
  cp -rf ./packages/$app/dist ./dist/subapp/${app}/
done

rm -rf ./dist/subapp/mainapp

# main基座
cp -rf ./packages/mainapp/dist/ ./dist/

# cd ..
echo 'bundle.sh execute success.'
