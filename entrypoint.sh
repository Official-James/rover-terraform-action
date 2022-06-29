#!/bin/bash

if [[ -n "$PLANPATH" ]]
then
    rover -standalone true -planPath $PLANPATH
else
    rover -standalone true
fi
