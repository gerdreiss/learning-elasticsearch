wget -P downloads http://files.grouplens.org/datasets/movielens/ml-latest-small.zip

wget http://media.sundog-soft.com/es7/MoviesToJson.py
wget http://media.sundog-soft.com/es7/IndexRatings.py

curl -XDELETE localhost:9200/movies

curl -H "Content-Type: application/json" \
          -XPUT localhost:9200/_bulk \
          --data-binary @bulk-movies.txt

curl -H "Content-Type: application/json" -XGET "localhost:9200/movies/_search?q=mary%20poppins&pretty"

curl -H "Content-Type: application/json" -XGET "localhost:9200/ratings/_search?pretty"