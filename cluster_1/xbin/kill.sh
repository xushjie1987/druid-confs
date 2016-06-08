#!/bin/sh

jps -lm | grep realtime | awk '{print $1}' | xargs kill
jps -lm | grep historical | awk '{print $1}' | xargs kill
jps -lm | grep coordinator | awk '{print $1}' | xargs kill
jps -lm | grep broker | awk '{print $1}' | xargs kill

