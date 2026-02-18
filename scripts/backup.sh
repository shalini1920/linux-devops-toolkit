#!/bin/bash

SOURCE=$1
DESTINATION=$2
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$DESTINATION"

cp -r "$SOURCE" "$DESTINATION/backup_$TIMESTAMP"

echo "Backup completed successfully"
