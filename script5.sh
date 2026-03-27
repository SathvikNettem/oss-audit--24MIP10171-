#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sathvik (24MIP10171)
# Software: Linux Kernel

echo "=========================================="
echo "   Open Source Manifesto Generator"
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo

# Interactive user input [cite: 193-196]
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date [cite: 197]
DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the manifesto paragraph [cite: 199-200]
{
    echo "--- OPEN SOURCE MANIFESTO ---"
    echo "Generated on: $DATE"
    echo "-----------------------------"
    echo "I believe in the power of open collaboration."
    echo "Every day, I rely on $TOOL to navigate the digital world."
    echo "To me, the heart of open source is $FREEDOM."
    echo "In the spirit of the Linux Kernel, I commit to building $BUILD"
    echo "and sharing it freely with the global community."
    echo "-----------------------------"
} > "$OUTPUT"

echo
echo "Success! Your manifesto has been saved to $OUTPUT"
echo "------------------------------------------"
# Display the final result [cite: 202]
cat "$OUTPUT"
echo "=========================================="
