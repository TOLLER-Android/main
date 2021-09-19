#!/bin/bash

running=1

finish() {
    running=0
}

trap finish SIGINT

CMD="${@:2}"

while (( running )); do
    $CMD
    echo "Trying to re-run $CMD in $1 second(s)..."
    sleep $1
done

