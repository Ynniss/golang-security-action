#!/bin/sh

if [ -z "$CODE_PATH" ] && [ -z "$CONF_PATH" ]
then
    echo "CODE_PATH ET CONF_PATH" 
    # gosec -conf $CONF_PATH $CODE_PATH
elif  [ -z "$CODE_PATH" ]
then
    # gosec $CODE_PATH
    echo "CODE_PATH" 
elif  [ -z "$CONF_PATH" ]
then
    echo "CONF_PATH" 
    # gosec -conf $CONF_PATH
fi

# gosec test.go