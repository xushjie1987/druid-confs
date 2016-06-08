#!/bin/sh

export KRB5_OPTS="-Djava.security.krb5.conf=/data/druid/cluster_5/_common/conf/krb5.conf -Djava.security.auth.login.config=/data/druid/cluster_5/_common/conf/kafka_client_jaas.conf -Dzookeeper.sasl.client.username=zks -Dsun.security.krb5.debug=true"

nohup java -server -Xms128m -Xmx128m -XX:MaxDirectMemorySize=512m -XX:+UseConcMarkSweepGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps $KRB5_OPTS -Duser.timezone=UTC -Djava.io.tmpdir=/data/druid/cluster_5/historical/tmps -Dfile.encoding=UTF-8 -classpath /data/druid/cluster_5/_common/conf:/data/druid/cluster_5/historical/conf:/app/druid-0.7.3/lib/* io.druid.cli.Main server historical > /dev/null 2>&1 &

