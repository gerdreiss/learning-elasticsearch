# docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.4.0

docker-compose up -d kibana

wget http://media.sundog-soft.com/es7/shakes-mapping.json

curl -H "Content-Type: application/json" -XPUT localhost:9200/shakespeare --data-binary @shakes-mapping.json

wget http://media.sundog-soft.com/es7/shakespeare_7.0.json

curl -H "Content-Type: application/json" -XPOST localhost:9200/shakespeare/_bulk --data-binary @shakespeare_7.0.json

curl -H "Content-Type: application/json" -XGET localhost:9200/shakespeare/_search?pretty -d '{ "query": { "match_phrase": { "text_entry": "to be or not to be" }}}'

