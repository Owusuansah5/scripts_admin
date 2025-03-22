#!/bin/bash

##Task: Archive files older than 7 days.

src_dir="/data/files" ##Path to the file files

archive_dir="/archive" ## Path to archive the files to 

sudo find $src_dir -type f -mtime +7 -exec mv {} $archive_dir \;
echo "Archived files older than 7 days."