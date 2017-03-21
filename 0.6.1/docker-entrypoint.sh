#!/bin/bash
#/////////////////////////////////////////////////
#// config
#/////////////////////////////////////////////////

if [ -e /cerebro/RUNNING_PID ];then
    rm -f /cerebro/RUNNING_PID
fi

/cerebro/bin/cerebro -Dhttp.port=80

#/////////////////////////////////////////////////
#// exec
#/////////////////////////////////////////////////
"$@"