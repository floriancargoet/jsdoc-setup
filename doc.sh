#!/bin/sh

# no readlink on OSX…
SCRIPT=$(readlink -f "$0")
SCRIPT_PATH=$(dirname "$SCRIPT")

# Path to docstrap template
TEMPLATE_PATH="$SCRIPT_PATH/ink-docstrap/template"
# Path to configuration file
CONFIG_PATH="$SCRIPT_PATH/jsdoc.config.json"

cd $SCRIPT_PATH/../

jsdoc -c $CONFIG_PATH -t $TEMPLATE_PATH
