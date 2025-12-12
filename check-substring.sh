#!/bin/bash
set -e

TARGET_FILE="config.txt"
SUBSTRING="required_value"

if [ ! -f "$TARGET_FILE" ]; then
    echo "❌ Error: file '$TARGET_FILE' not found."
    exit 1
fi

if grep -q "$SUBSTRING" "$TARGET_FILE"; then
    echo "✔ Substring '$SUBSTRING' found in $TARGET_FILE"
    exit 0
else
    echo "❌ Substring '$SUBSTRING' NOT found in $TARGET_FILE"
    exit 1
fi
