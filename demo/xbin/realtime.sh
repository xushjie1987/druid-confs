#!/bin/sh

nohup java -server -Xmx128m -Xms128m -XX:MaxDirectMemorySize=512m -XX:+UseConcMarkSweepGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.io.tmpdir=/data/druid/cluster_1/realtime/tmps -Ddruid.realtime.specFile=/data/druid/cluster_1/xbin/data_source.json -classpath /data/druid/cluster_1/_common/conf:/data/druid/cluster_1/realtime/conf:/app/druid-0.7.3/lib/* io.druid.cli.Main server realtime > /dev/null 2>&1 &

