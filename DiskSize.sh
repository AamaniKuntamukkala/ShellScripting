#!/bin/bash
echo "This program get first 10 biggest file in the file system passed via positional argument"
path="$1"
echo $path
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt#sort -n (less to more), sort -hr (more to less)human readable format
echo "This is the list of big files in the file system $path "
cat /tmp/filesize.txt
