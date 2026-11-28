#!/bin/bash
# Author: Tisya (2601730474)
# Description: Creates a timestamped compressed backup of a target folder

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="backup_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

tar -czf "$ARCHIVE_PATH" -C "$(dirname "$1")" "$(basename "$1")"

if [ $? -eq 0 ]; then
    SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)
    echo "Success: Backup created at $ARCHIVE_PATH ($SIZE)"
    echo "$(date +"%Y-%m-%d %H:%M:%S") - SUCCESS: $ARCHIVE_NAME ($SIZE)" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: Backup failed."
    echo "$(date +"%Y-%m-%d %H:%M:%S") - FAILED: $1" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
