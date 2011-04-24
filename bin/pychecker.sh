#!/bin/bash
pyflakes $1
echo "## pyflakes above, pep8 below ##"
pep8 --ignore=E221,E241,E251,E401,E501 --repeat $1
true

