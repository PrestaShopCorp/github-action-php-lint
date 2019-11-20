#!/bin/sh -l

sh -c "! (find . -type f -name \"*.php\" $* -exec php -l -n {} \; | grep -v \"No syntax errors detected\")"
