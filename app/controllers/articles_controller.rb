require 'net/http'

class ArticlesController < ApplicationController

  def index
    endpoint = URI("https://api.nytimes.com/svc/topstories/v2/home.json?api-key=cKuSs8rHBhY0AvMEon0nG3YnnE8GWMFD")
    response = Net::HTTP.get(endpoint)
    @articles = JSON.parse(response)["results"]
  end

end
