#!/bin/bash

if [[ -n "$PLANPATH" ]]
then
    rover -standalone true -planJSONPath $PLANPATH -tfConfigExists false
else
    rover -standalone true
fi
