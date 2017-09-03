require 'rails_helper'
require 'spec_helper'
require 'net/http'
require 'uri'
require 'json'

describe "Routing", type: :request do

  it "Fetching without params gets error" do
    get "/graphql"
    expect(response.body).to eq '{"errors":[{"message":"No query string was present"}]}'
  end

  it "Fetching main endpoint responds" do
    # fetch main endpoint
    post "/graphql", :query => ""
    # verify response
    expect(response.body).to eq "{}"
    # verify it's not an error
    expect(response.status).to eq 200
  end

end
