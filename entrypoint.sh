#!/bin/sh

launchGosec() {
    if [ -n "$CODE_PATH" ] && [ -n "$CONF_PATH" ]; then
        gosec -conf $CONF_PATH $CODE_PATH
    elif [ -n "$CODE_PATH" ]; then
        gosec $CODE_PATH
    elif [ -n "$CONF_PATH" ]; then
        gosec -conf $CONF_PATH
    fi
}

launchGosec
