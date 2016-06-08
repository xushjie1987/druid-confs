#!/bin/sh

nohup java -server -Xmx128m -Xms128m -XX:+UseG1GC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.io.tmpdir=/data/druid/cluster_1/coordinator/tmps -classpath /data/druid/cluster_1/_common/conf:/data/druid/cluster_1/coordinator/conf:/app/druid-0.7.3/lib/* io.druid.cli.Main server coordinator > /dev/null 2>&1 &

