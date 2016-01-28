#!/bin/bash

ROOT=$(pwd)

componets=("api-server" "oauth2-server" "ttjinhuo.com" "adminEx" "nginx")
for componet in ${componets[@]}
do
    echo "cleanning ${componet} ..."
    cd ${componet}
    rm -rf ./logs/*.log
    rm -rf ./logs/*.pid
    ./bin/stop.sh
    cd ..
done
pkill nginx
echo "all procs are killed and logs directory are cleaned."