#!/bin/bash

# Backup script for department directories
# Define backup destination directory
backup_dir="/backup"

# Define department directories
students_dir="/Students"
staff_dir="/Staff"

# Create timestamp for backup folder
timestamp=$(date +"%Y%m%d_%H%M%S")

# Create backup directory with timestamp
backup_folder="$backup_dir/backup_$timestamp"
mkdir -p "$backup_folder"

# Backup department directories
cp -r "$students_dir" "$backup_folder"
cp -r "$staff_dir" "$backup_folder"

# Log the backup operation
echo "Backup completed on $(date)" >> "$backup_folder/backup_log.txt"

