wget -P downloads http://media.sundog-soft.com/es/access_log
wget -P downloads http://files.grouplens.org/datasets/movielens/ml-100k.zip

curl -H "Content-Type: application/json" -XGET "localhost:9200/_cat/indices?v"

curl -H "Content-Type: application/json" -XGET "localhost:9200/logstash-2019.10.28-000001/_search?pretty"

