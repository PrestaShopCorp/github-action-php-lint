#!/bin/sh -l

if [ ! -z "$1" ]
then
  cd $1
fi

sh -c "! (find . -type f -name \"*.php\" $2 -exec php -l -n {} \; | grep -v \"No syntax errors detected\")"
