#!/bin/bash


function create_backup {
src_dir=/home/ubuntu/scripts
tgt_dir=/home/ubuntu/backups

current_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
echo "backup for Time: " $current_timestamp

backup_file=$tgt_dir/$current_timestamp.tgz
echo $backup_file

tar czf $backup_file -C $src_dir .
}

echo "Backup Started ..."

create_backup
echo "Backup completed"
