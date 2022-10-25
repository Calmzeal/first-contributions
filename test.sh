#! /usr/bin/bash

if [[ $(proselint test.md) == "" ]]; then 
    echo 1
fi
