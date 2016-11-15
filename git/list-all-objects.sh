#!/bin/sh

# ref. http://stackoverflow.com/questions/7348698/git-how-to-list-all-objects-in-the-database
# list all objects in db
{
    git rev-list --objects --all
    git rev-list --objects -g --no-walk --all
    git rev-list --objects --no-walk \
        $(git fsck --unreachable |
          grep '^unreachable commit' |
          cut -d' ' -f3)
} | sort | uniq
