#!/bin/bash
#
# creates a directory for reproducible research
# usage: sh projestruc.sh -d yes -p dir_prefix
# if parameters are not supplied by the user, dafult values will
# be used

set -e
set -u
set -o pipefail

# parse arguments
while [[ $# -gt 1 ]]
do
key="$1"
case $key in
  -d|--date)
    DATE="$2"
    shift
    ;;
  -p|--prefix)
    PREFIX="$2"
    shift
    ;;
   *)

    ;;
esac
shift
done

dir_prefix=${PREFIX:-reproducible_dir}
date=${DATE:-no}

get_date () {
    current_date=($(date +%F))
    echo "$current_date"
}

if [[ "$date" = "yes" ]] ; then
  my_dir=$(get_date)-${dir_prefix}
fi

# check if directory exist
if [ -e ${my_dir:-$dir_prefix} ]
then
  echo "directory: "${my_dir:-$dir_prefix}" already exist"
  echo "directory won't be created"
  exit 0
fi

mkdir -p ${my_dir:=$dir_prefix}/{data,output,src,plots}
touch $my_dir/runall.py 
find $my_dir -type d -exec touch {}/README.md \;

