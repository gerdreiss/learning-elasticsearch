
wget -P downloads http://files.grouplens.org/datasets/movielens/ml-latest-small.zip

cd downloads

unzip ml-latest-small.zip 

cd ..

curl -H "Content-Type: application/json" \
     -XPUT "localhost:9200/movies?pretty" \
     -d @mappings/movies-mapping.json


curl -XGET localhost:9200/movies/_mapping?pretty
