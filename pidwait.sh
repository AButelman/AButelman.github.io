#!/usrbin/env bash

function pidwait() {
    PID=$1
    kill -0 "$PID" 2>/dev/null
    if [[ $? -eq 0 ]]
    then
        echo "Process $PID still exists, waiting..."  
    fi
    
    while [[ $? -eq 0 ]];
    do
        sleep 1
        kill -0 "$PID" 2>/dev/null
    done
    echo "Process $PID has finished."
}
