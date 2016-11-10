#! /bin/bash

curl -X POST 'http://10.128.6.72:8082/druid/v2/?pretty' -H 'content-type: application/json' -d@query.json
