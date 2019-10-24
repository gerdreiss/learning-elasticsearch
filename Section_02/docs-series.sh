curl -H "Content-Type: application/json" -XPUT "localhost:9200/series" -d '
{
    "mappings": {
        "properties": {
            "film_to_franchise": {
                "type": "join",
                "relations": { "franchise": "film" }
            }
        }
    }
}
'

wget -O downloads/series.txt http://media.sundog-soft.com/es7/series.json

curl -H "Content-Type: application/json" -XPUT "localhost:9200/_bulk?pretty" --data-binary @downloads/series.txt

curl -H "Content-Type: application/json" -XGET "localhost:9200/series/_search?pretty" -d '
{
    "query": {
        "has_parent": {
            "parent_type": "franchise",
            "query": {
                "match": {
                    "title": "Star Wars"
                }
            }
        }
    }
}
'

curl -H "Content-Type: application/json" -XGET "localhost:9200/series/_search?pretty" -d '
{
    "query": {
        "has_child": {
            "type": "film",
            "query": {
                "match": {
                    "title": "The Force Awakens"
                }
            }
        }
    }
}
'


