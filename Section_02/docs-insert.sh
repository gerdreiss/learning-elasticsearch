
curl -H "Content-Type: application/json" -XPOST localhost:9200/movies/_doc/109487?pretty -d '
{
    "genre": ["IMAX","Sci-Fi"],
    "title": "Interstellar",
    "year": 2014
}
'

wget -O downloads/movies.txt http://media.sundog-soft.com/es7/movies.json

curl -H "Content-Type: application/json" -XPUT "localhost:9200/movies/_bulk?pretty" --data-binary @downloads/movies.txt

curl -XGET "localhost:9200/movies/_search?pretty"
