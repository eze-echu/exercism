#!/usr/bin/env bash
  main () {
    a=$1
    if [ $((a % 3)) -ne 0 ] && [ $((a % 5)) -ne 0 ] && [ $((a % 7)) -ne 0 ]; then
    printf "%s" $1
    return 0
    fi
    if [ $((a % 3)) -eq 0 ] ; then
    printf "Pling"
    fi
    if [ $((a % 5)) -eq 0 ] ; then
    printf "Plang"
    fi
    if [ $((a % 7)) -eq 0 ] ; then
    printf "Plong"
    fi
    
  }

  # call main with all of the positional arguments
  main "$@"

