#!/bin/bash
PORT_NUMBER=8080
ACTIVE_PID=$(lsof -t -i:$PORT_NUMBER)

if [ -z "$ACTIVE_PID" ]
then
      echo "Application not running"
else
	  kill -9 $ACTIVE_PID
fi
