#!/bin/bash

set -e

echo "Let's test that we have deployed a lambda"

# invoke a lambda

rm outfile.txt
if aws lambda invoke --function-name dead-simple outfile.txt
then
    echo "yay"
    echo "The output is: "
    cat outfile.txt
else
    echo "boo"
    exit 1
fi

# did it reply

