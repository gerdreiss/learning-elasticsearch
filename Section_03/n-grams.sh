curl -H "Content-Type: application/json" \
     -XPUT "localhost:9200/movies?pretty" \
     -d @n-grams/autocomplete-analyzer.json

curl -H "Content-Type: application/json" \
     -XPUT "localhost:9200/movies?pretty" \
     -d '{
         "properties": {
             "title": {
                 "type": "text",
                 "analyzer": "autocomplete"
             }
         }
     }'

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d '{
         "query": {
             "match": {
                 "title": {
                     "query": "sta",
                     "analyzer": "standard"
                 }
             }
         }
     }'