#!/bin/bash

echo "Let's test that we have deployed a lambda"

# invoke a lambda

if aws lambda invoke --function-name dead-simple -
then
    echo "yay"
else
    echo "boo"
    exit 1
fi

# did it reply

