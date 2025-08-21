#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Missing arguments. Usage: $0 <writefile> <writestr>"
    exit 1
fi


writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile" || {
    echo "Error: Could not create/write to file '$writefile'"
    exit 1
}

exit 0
