#!/bin/bash

ARGS=""
for var in "$@"
do
  ARGS="$ARGS -f $var"
done

fg3console $ARGS
