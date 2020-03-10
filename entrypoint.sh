#!/bin/sh

launchGosec() {
    if [ -n "$INPUT_CODE_PATH" ] && [ -n "$INPUT_CONF_PATH" ]; then
        gosec -conf $INPUT_CONF_PATH $INPUT_CODE_PATH
    elif [ -n "$INPUT_CODE_PATH" ]; then
        gosec $INPUT_CODE_PATH
    elif [ -n "$INPUT_CONF_PATH" ]; then
        gosec -conf $INPUT_CONF_PATH
    fi
}

launchGosec
