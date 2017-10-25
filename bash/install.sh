#!/usr/bin/env bash

install () {
    arg=$1
    echo "$arg"

    if [ -z "${arg}" ]
    then
        cp ./bash/* "${HOME}"
    fi

}
