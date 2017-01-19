#!/bin/bash
# ref. http://unix.stackexchange.com/questions/111949/get-list-of-subdirectories-which-contain-a-file-matching-a-string
find . -type f -name '*.bitmap^C| sed -r 's|/[^/]+$||' |sort |uniq
