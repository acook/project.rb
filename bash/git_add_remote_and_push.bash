#!/bin/bash

git remote add origin git@github.com:$1/$2.git
git push -u origin master

