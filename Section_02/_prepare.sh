
wget -P downloads http://files.grouplens.org/datasets/movielens/ml-latest-small.zip

cd downloads

unzip ml-latest-small.zip 

cd ..

curl -H "Content-Type: application/json" -XPUT localhost:9200/movies?pretty -d '
{
    "mappings": {
        "properties": {
            "id": { "type": "integer"},
            "year": { "type": "date" },
            "genre": { "type": "keyword" },
            "title": { "type": "text", "analyzer": "english" }
        }
    }
}
'

curl -XGET localhost:9200/movies/_mapping?pretty
