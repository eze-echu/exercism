#!/usr/bin/env bash

main () {
    # name="$1"
    # if [ -n "$name" ]; then
    #     echo "One for $1, one for me."
    #     exit 0
    # else
    #     echo "One for you, one for me."
    #     exit 0
    # fi
    echo "One for ${1-you}, one for me."
}
main "$@"