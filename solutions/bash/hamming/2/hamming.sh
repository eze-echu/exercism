#!/usr/bin/env bash

main () {
    if [[ $# -ne 2 ]]; then
    printf "Usage: hamming.sh <string1> <string2>"
    return 1
    fi
    if [[ "${#1}" != "${#2}" ]]; then
    printf "strands must be of equal length"
    return 1
    fi
  count=0
  for ((i = 0; i < "${#1}"; i++)); do
  #echo "mondongo"
    if [[ ! "${1:i:1}" == "${2:i:1}" ]]; then
    count=$((count + 1))
    fi
  done
  
  echo $count
  #echo $1
  #echo $2
}

main "$@"
