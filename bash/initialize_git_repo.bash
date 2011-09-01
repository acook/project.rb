#!/bin/bash

# check for git exit with error if not found

readme=README.markdown

mkdir $1
cd $1

echo $1 > $readme
echo ====== >> $readme
echo >> $readme
echo This is a new repo for the $readme project. >> $readme
echo >> $readme

git init
git add $readme
git commit -m "first commit for $readme"

