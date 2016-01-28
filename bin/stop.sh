#!/bin/bash

ROOT=$(pwd)

componets=("api-server" "oauth2-server" "ttjinhuo.com" "adminEx" "nginx")
for componet in ${componets[@]}
do
    echo "stop ${componet} ..."
    cd ${componet}
    ./bin/stop.sh
    cd ..
done
echo "all componets are stopped."