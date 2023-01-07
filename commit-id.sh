#! /usr/bin/env bash

GIT_COMMIT=$1
if [[ "$GIT_COMMIT" != "master" && "$GIT_COMMIT" != "emacs-29" && ! "$GIT_COMMIT" =~ ^[a-zA-Z0-9]{40}$ ]]
then
    [[ -z "$1" ]] && echo "The fist argument is empty!"
    printf "Error!  Not a valid Git commit hash.\n"
    exit 1
else
    printf "Git commit hash is valid.\n"
    exit 0
fi
