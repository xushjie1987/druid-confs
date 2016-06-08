#!/bin/sh

export KRB5_OPTS="-Djava.security.krb5.conf=/data/druid/cluster_4/_common/conf/krb5.conf -Djava.security.auth.login.config=/data/druid/cluster_4/_common/conf/kafka_client_jaas.conf"

nohup java -server -Xmx128m -Xms128m -XX:MaxDirectMemorySize=512m -XX:+UseConcMarkSweepGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps $KRB5_OPTS -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.io.tmpdir=/data/druid/cluster_4/realtime/tmps -Ddruid.realtime.specFile=/data/druid/cluster_4/xbin/data_source.json -classpath /data/druid/cluster_4/_common/conf:/data/druid/cluster_4/realtime/conf:/app/druid-0.7.3/lib/* io.druid.cli.Main server realtime > /dev/null 2>&1 &

