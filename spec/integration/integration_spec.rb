require 'rails_helper'

RSpec.describe "Integration", type: :request do

  it "Fetching simple query returns correct data" do
    uri = URI.parse("http://localhost:3000/graphql")
    header = {'Content-Type': 'application/json'}
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = '{
                        "query": "query products {\n products {\n title\n }\n}",
                        "variables": {},
                        "operationName": "products",
                        "controller": "graphql",
                        "action": "execute"
                      }'
    response = http.request(request)
    # verify response
    expect(response.body).to eq '{"data":{"products":[{"title":"Firly Firstington Furlingator"},{"title":"Sammys Special Second"},{"title":"Trio of Tame Trout"},{"title":"Four Foreman Furlingating"}]}}'
    # I was planning on checking the response equals Product.all.to_json
    # but Product is empty! fallback to hardcoding... not Ideal I know :/
  end

  it "Fetching all returns correct data" do
    uri = URI.parse("http://localhost:3000/graphql")
    header = {'Content-Type': 'application/json'}
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = '{
                        "query": "query products {\n products {\n title \n price \n }\n}",
                        "variables": {},
                        "operationName": "products",
                        "controller": "graphql",
                        "action": "execute"
                      }'
    response = http.request(request)
    # verify response
    expect(response.body).to eq '{"data":{"products":[{"title":"Firly Firstington Furlingator","price":111},{"title":"Sammys Special Second","price":122},{"title":"Trio of Tame Trout","price":133},{"title":"Four Foreman Furlingating","price":144}]}}'
  end

  it "Query store product returns correct data" do
    uri = URI.parse("http://localhost:3000/graphql")
    header = {'Content-Type': 'application/json'}
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = '{
                        "query": "query store_products {\n store_products {\n title \n price \n expiring \n }\n}",
                        "variables": {},
                        "operationName": "store_products",
                        "controller": "graphql",
                        "action": "execute"
                      }'
    response = http.request(request)
    # verify response
    expect(response.body).to eq '{"data":{"store_products":[{"title":"Firly Firstington Furlingator","price":111,"expiring":null},{"title":"Sammys Special Second","price":122,"expiring":null},{"title":"Trio of Tame Trout","price":133,"expiring":null},{"title":"Four Foreman Furlingating","price":144,"expiring":null},{"title":"2016 - Overly Obleque Over One","price":111,"expiring":"2016-01-01 01:00:00 UTC"},{"title":"2017 - Tremendously Troublesome Timely Two","price":122,"expiring":"2017-12-31 01:00:00 UTC"}]}}'
  end

end
