curl -H "Content-Type: application/json" -XGET "sif-elasticsearch-v2:9200/_cat/indices"
curl -H "Content-Type: application/json" -XGET "sif-elasticsearch-v2:9200/_cat/indices/gravitee*?v&s=index"
