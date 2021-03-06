#!/bin/bash

source /etc/profile

java -server -Xms4g -Xmx4g -Xmn1g -Xss256k -XX:+UseConcMarkSweepGC -XX:CMSInitiatingOccupancyFraction=80 -XX:ParallelGCThreads=3 -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:/usr/local/yunji/titan-agent/logs/gc.log -jar titan-agent.jar &
