#!/bin/sh

if [ -z "$CODE_PATH" ] && [ -z "$CONF_PATH" ] then
    gosec -conf $CONF_PATH $CODE_PATH
elif  [ -z "$CODE_PATH" ]
    gosec $CODE_PATH
elif  [ -z "$CONF_PATH" ]
    gosec -conf $CONF_PATH $CODE_PATH
fi