curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?sort=year&pretty"

# cannot do that after creating the index...
curl -H "Content-Type: application/json" \
     -XPUT localhost:9200/movies \
     --data-binary @mappings/sorted.json

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?sort=title.raw&pretty"
# ... //
