#!/bin/bash
COMPILE="g++ ./$1 -o temp.run"
eval $COMPILE

CMD="./temp.run"
if [ "$2" != "nil" -a -n "$2" ]; then
		CMD="$CMD <$2"
fi

if [ "$3" != "nil" -a -n "$3" ]; then
		CMD="$CMD >$3"
fi
eval $CMD

CLEAR="rm ./temp.run"
eval $CLEAR