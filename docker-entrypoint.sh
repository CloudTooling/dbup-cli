#!/usr/bin/env bash

workDir=${WORK_DIR:-/src}
cd $workDir
echo "Run dbup in directory: $workDir"
dbup $@