#! /bin/bash

URL=http://localhost:8080
CONTENT=$(curl -sLI $URL | grep HTTP/1.1 | tail -1 | awk {'print $2'})

if [ ! -z $CONTENT ] && [ $CONTENT -eq 200 ]
then
    echo TEAMSERVER UP
else
    echo TEAMSERVER DOWN
fi
