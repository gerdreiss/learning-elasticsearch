
wget -P downloads http://media.sundog-soft.com/es7/shakes-mapping.json

curl -H "Content-Type: application/json" -XPUT localhost:9200/shakespeare --data-binary @downloads/shakes-mapping.json

wget -P downloads http://media.sundog-soft.com/es7/shakespeare_7.0.json

curl -H "Content-Type: application/json" -XPOST localhost:9200/shakespeare/_bulk --data-binary @downloads/shakespeare_7.0.json

curl -H "Content-Type: application/json" -XGET localhost:9200/shakespeare/_search?pretty -d @search-req.json
