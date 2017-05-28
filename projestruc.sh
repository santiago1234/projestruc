#!/usr/bin/env bash
set -e
set -u
set -o pipefail


# usr arguments -----------------------------------------------------------
# check if user supplied dir prefix if not set it to reproducible_dir
dir_prefix=${1:-reproducible_dir}

# get the current date ----------------------------------------------------
get_date () {
    current_date=($(date +%F))
    echo "$current_date"
}



date=$(get_date )
my_dir="$date-$dir_prefix"

mkdir -p $my_dir/{data,output,src,plots}

touch $my_dir/runall.py 


# create readme file ------------------------------------------------------
find $my_dir -type d -exec touch {}/README.md \;

