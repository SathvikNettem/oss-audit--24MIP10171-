#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sathvik (24MIP10171)
# Software: Linux Kernel
# Usage: ./script4.sh /var/log/messages error

# --- Variables ---
# $1 is the first argument (logfile), $2 is the second (keyword) [cite: 170, 171]
LOGFILE=${1:-"/var/log/syslog"} 
KEYWORD=${2:-"error"}
COUNT=0

echo "Starting Log Analysis on: $LOGFILE"
echo "Searching for keyword: '$KEYWORD'"
echo "------------------------------------------"

# Check if the log file exists before proceeding [cite: 174]
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# While-read loop to process the file line by line [cite: 165, 177-182]
while IFS= read -r LINE; do
    # Search for the keyword (case-insensitive) [cite: 179]
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        # Optional: Print the matching line (helpful for the screenshot)
        # echo "Match found: $LINE"
    fi
done < "$LOGFILE"

# --- Summary Output ---
echo "Analysis Complete."
echo "Keyword '$KEYWORD' was found $COUNT times in $LOGFILE."
echo "------------------------------------------"

# Extra Credit: Show the last 5 occurrences using tail [cite: 184]
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
