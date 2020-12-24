require 'json'
require 'net/http'
require 'open-uri'

# the get requester has logged in
class GetRequester
  def initialize(url)
    @url = url
  end

  def get_response_body
    Net::HTTP.get_response(URI.parse(@url)).body
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end
