#!/bin/sh -l

sh -c "! (find . $* -print0 | xargs -0 -n1 -P4 php -l | grep -q \"Parse error\")"