#!/bin/sh

launchGosec() {
    if [ -n "$INPUT_CONF_PATH" ]; then
        gosec -conf $INPUT_CONF_PATH $INPUT_CODE_PATH
    else
        gosec $INPUT_CODE_PATH
    fi
}

launchGosec
