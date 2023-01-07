#! /usr/bin/env bash

SRC_BASE_URL="https://git.savannah.gnu.org/cgit/emacs.git/snapshot/emacs"
GIT_COMMIT=$1
if [[ "$GIT_COMMIT" = "master" || "$GIT_COMMIT" = "emacs-29" || "$GIT_COMMIT" =~ ^[a-zA-Z0-9]{40}$ ]]
then
    printf "Git commit hash is valid.\n"
    emacs_src_url="${SRC_BASE_URL}-${GIT_COMMIT}.tar.gz"
    emacs_src="emacs-${GIT_COMMIT}"
    echo "valid: ${emacs_src_url}"

elif [[ -z "$1" ]]
then
    emacs_src_url="${SRC_BASE_URL}-emacs-29.tar.gz"
    emacs_src="emacs-emacs-29"
    echo "empty: ${emacs_src_url}"
else
    printf "Error!  Please give a valid Git commit hash.\n"
    exit 1

fi
