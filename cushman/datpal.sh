#!/bin/bash
# Imports csv and starts dat server
# Must already have dat installed
# Specify csv file with first argument

dat init
echo Initiated dat store
dat import --csv $1
echo Imported $1
echo Starting dat server...
dat listen

