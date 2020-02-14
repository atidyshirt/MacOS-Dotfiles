#!/bin/bash

function gitlink() {
    result=${PWD##*/}
    git init
    git remote add origin https://github.com/atidyshirt/$result.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}
