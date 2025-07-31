#!/usr/bin/env bash

# The following comments should help you get started:
# - Bash is flexible. You may use functions or write a "raw" script.
#
# - Complex code can be made easier to read by breaking it up
#   into functions, however this is sometimes overkill in bash.
#
# - You can find links about good style and other resources
#   for Bash in './README.md'. It came with this exercise.
#
#   Example:
#   # other functions here
#   # ...
#   # ...
#
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
#
#   # call main with all of the positional arguments
main "$@"
#
# *** PLEASE REMOVE THESE COMMENTS BEFORE SUBMITTING YOUR SOLUTION ***
