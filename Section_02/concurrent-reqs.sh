curl -XGET localhost:9200/movies/_doc/109487?pretty
# {
#   "_index" : "movies",
#   "_type" : "_doc",
#   "_id" : "109487",
#   "_version" : 6,
#   "_seq_no" : 9,
#   "_primary_term" : 1,
#   "found" : true,
#   "_source" : {
#     "genre" : [
#       "Action",
#       "Sci-Fi",
#       "IMAX"
#     ],
#     "title" : "Interstellar",
#     "year" : 2014
#   }
# }

curl -H "Content-Type: application/json" -XPUT "localhost:9200/movies/_doc/109487?if_seq_no=9&if_primary_term=1" -d '
{
    "genre": ["Action","Sci-Fi","IMAX"],
    "title": "Interstellar",
    "year": 2014
}
'

# Update document via POST .../_update
curl -H "Content-Type: application/json" -XPOST localhost:9200/movies/_doc/109487/_update?retry_on_conflict=5 -d '
{
    "doc": {
        "genre": ["Sci-Fi", "Action", "IMAX"]
    }
}
'
