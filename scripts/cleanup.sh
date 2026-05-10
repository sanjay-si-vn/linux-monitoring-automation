#!/bin/bash

LOG_DIR="logs"
BACKUP_DIR="backups"

echo "Starting cleanup process..."

find $LOG_DIR -type f -mtime +7 -delete

find $BACKUP_DIR -type f -mtime +7 -delete

echo "Old files deleted successfully."
