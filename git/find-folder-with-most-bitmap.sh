#!/bin/bash

find . -type f -name '*.bitmap^C| sed -r 's|/[^/]+$||' |sort |uniq
