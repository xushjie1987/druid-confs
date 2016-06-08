#!/bin/sh

nohup java -server -Xms128m -Xmx128m -XX:MaxDirectMemorySize=512m -XX:+UseConcMarkSweepGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Duser.timezone=UTC -Djava.io.tmpdir=/data/druid/cluster_1/historical/tmps -Dfile.encoding=UTF-8 -classpath /data/druid/cluster_1/_common/conf:/data/druid/cluster_1/historical/conf:/app/druid-0.7.3/lib/* io.druid.cli.Main server historical > /dev/null 2>&1 &

