#!/bin/bash

if [ -z "$PLANPATH" ]
then
    rover -standalone true
else
    rover -standalone true -planPath $PLANPATH
fi
