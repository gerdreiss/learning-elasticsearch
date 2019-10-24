curl -XGET "localhost:9200/movies/_search?q=title:star&pretty"

curl -XGET "localhost:9200/movies/_search?q=+year>2010+title:trek&pretty"

# DO NOT USE THE URL SEARCHES - IT'S CUMBERSOME AND INSECURE