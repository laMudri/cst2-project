#!/usr/bin/env sh

for f in results/*
do
  stack exec -- process-prof $f >summary/`basename $f`
done
