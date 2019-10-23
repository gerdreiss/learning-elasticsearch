
# Update document via POST .../_update
curl -H "Content-Type: application/json" -XPOST localhost:9200/movies/_doc/109487/_update?pretty -d '
{
    "doc": {
        "genre": ["Sci-Fi", "Action", "IMAX"]
    }
}
'
# Update document via PUT
curl -H "Content-Type: application/json" -XPUT localhost:9200/movies/_doc/109487?pretty -d @interstellar-update.json

curl -XGET localhost:9200/movies/_doc/109487?pretty

