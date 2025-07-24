#!/bin/bash
# === CONFIGURATION ===
echo "==== automated backup and logging script===="

source="/home/vedantt/backup"
date=$(date +%d-%m-%Y)
# === CREATE BACKUP FOLDER IF NOT EXISTS 

echo -e "enter directory name: \c"
read m 
mkdir -p $source/$m

# === PERFORM BACKUP ====
echo -e "Enter your backup location: \c"
read location

echo -e "Enter your backup file: \c"
read file

tar -czvf $source/$m/backup_$date.tar.gz $location $file 
echo"Backup created successfully "
