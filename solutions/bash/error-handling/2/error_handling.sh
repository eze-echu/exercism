#!/usr/bin/env bash

  main () {
      if [ $# -ne 1 ]; then
      print_usage
      return 1
      fi
      printf "Hello, $1"
    # your main function code here
  }
  print_usage () {
      echo "Usage: error_handling.sh <person>" 1>&2
  }

main "$@"

