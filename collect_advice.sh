#!/bin/bash

LOGFILE="jack.clemen.advices"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
ADVICE=$(curl -s https://api.adviceslip.com/advice | jq -r '.slip.advice')
echo "[$TIMESTAMP] $ADVICE" >> "$LOGFILE"
