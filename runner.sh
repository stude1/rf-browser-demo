#!/bin/bash
echo Starting test
cd /tmp/robot
robot -L TRACE:DEBUG -C on -d report $*
