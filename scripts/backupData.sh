#!/bin/bash

function create_backup {

	src_dir=/home/ubuntu/scripts
	tgt_dir=/home/ubuntu/backups

	current_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")

	final_file=$tgt_dir/scripts-backup-$current_timestamp.tgz

	tar czf $final_file -C $src_dir .
}

echo "Starting Backup Process .."
create_backup
echo "Backup Completed ..."

