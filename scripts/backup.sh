#!/bin/bash

BACKUP_DIR="backups"
SOURCE_DIR="logs"

TIMESTAMP=$(date +%F-%H-%M-%S)

BACKUP_FILE="$BACKUP_DIR/logs_backup_$TIMESTAMP.tar.gz"

echo "Starting backup process..."

tar -czf $BACKUP_FILE $SOURCE_DIR

echo "Backup completed successfully."

echo "Backup saved as:"
echo "$BACKUP_FILE"
