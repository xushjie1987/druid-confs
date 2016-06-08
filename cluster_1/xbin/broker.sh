#!/bin/sh

nohup java -server -Xms28m -Xmx128m -XX:MaxDirectMemorySize=512m -XX:+UseConcMarkSweepGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.io.tmpdir=/data/druid/cluster_1/broker/tmps -classpath /data/druid/cluster_1/_common/conf:/data/druid/cluster_1/broker/conf:/app/druid-0.7.3/lib/* io.druid.cli.Main server broker > /dev/null 2>&1 &

