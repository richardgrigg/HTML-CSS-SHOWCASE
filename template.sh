#!/bin/bash
# Ask the user for their name

echo Project name ?
read projectname

dirname=$(pwd)
shopt -s extglob           # enable +(...) glob syntax
result=${dirname%%+(/)}    # trim however many trailing slashes exist
result=${result##*/}       # remove everything before the last / that still remains
result=${result:-/}        # correct for dirname=/ case


cp -r $HOME/workspace/learn-css/.html-template  ./$projectname


