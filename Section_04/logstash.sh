wget -P downloads media.sundog-soft.com/es/access_log

curl -H "Content-Type: application/json" -XGET "localhost:9200/_cat/indices?v"

curl -H "Content-Type: application/json" -XGET "localhost:9200/logstash-2019.10.28-000001/_search?pretty"