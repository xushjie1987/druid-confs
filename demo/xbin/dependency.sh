#!/bin/sh

mvn -s /app/apache-maven-3.3.9/conf/settings.xml -f /data/druid/cluster_1/xbin/pom.xml dependency:resolve

