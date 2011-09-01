#!/bin/bash

# check for git exit with error if not found

#mkdir $1
#cd $1

#readme=README.markdown
#echo $1 > $readme
#echo ====== >> $readme
#echo >> $readme
#echo This is a new repo for the $readme project. >> $readme
#echo >> $readme

git init
git add .
git commit -m "first commit for $1"

