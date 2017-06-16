#! /bin/bash

URL={{ check_scheme }}://localhost:{{ check_port }}
CONTENT=$(curl -skLI $URL | grep HTTP/1.1 | tail -1 | awk {'print $2'})

if [ ! -z $CONTENT ] && [ $CONTENT -eq 200 ]
then
    echo TEAMSERVER UP
else
    echo TEAMSERVER DOWN
fi
