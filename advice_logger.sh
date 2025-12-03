#!/bin/bash

# Log file
LOGFILE="jack.clemen.advices"

# Current timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Get advice using curl and parse with jq
ADVICE=$(curl -s https://api.adviceslip.com/advice | jq -r '.slip.advices')

# Save to log file
echo "[$TIMESTAMP] $ADVICE" >> "$LOGFILE"
