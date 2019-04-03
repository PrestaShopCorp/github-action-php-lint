#!/bin/sh -l

sh -c "! (find . -name \"*.php\" $* -print0 | xargs -0 -n1 -P4 php -l | grep \"Parse error\")"
