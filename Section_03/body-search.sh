curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d '{ "query": { "match": { "title": "star" }}}'

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d @queries/match.json

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d @queries/bool-title-year.json

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d @queries/phrase-slop-1.json

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d @queries/phrase-slop-100.json

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d @queries/complex-filter.json

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d '{ "query": { "fuzzy": { "title": { "value": "intrsteller", "fuzziness": 2 }}}}'

curl -H "Content-Type: application/json" \
     -XGET "localhost:9200/movies/_search?pretty" \
     -d '{ "query": { "prefix": { "title": "star" }}}'


# more queries
# { "match_all": {}}
# { "match": { "title": "star" }}
# { "multi_match": { "query": "star", "fields": ["title", "synopsis"] }}
# bool

# more filters:
# { "term": { "year": 2019 } }
# { "terms": { "genre": ["Sci-Fi", "Adventure"] }}
# { "range": { "year": { "gte": 2010 }}}
# { "exists": { "field": "tags" }}
# { "missing": { "field": "tags" }}
# bool
