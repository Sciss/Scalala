#!/bin/sh

# find reference to initial script
ROOT=`readlink -f $0 | xargs dirname`
SCALALA=$ROOT/scalala.scala

# build classpath
CP=$ROOT/bin
for LIB in $ROOT/lib/*.jar ; do CP=$CP:$LIB ; done

# invoke scala
scala -classpath $CLASSPATH:$CP -i $SCALALA "$@"
