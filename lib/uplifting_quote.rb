require "uplifting_quote/version"
require "net/http"
require "json"

module UpliftingQuote
  extend self

  def add(this, that)
    begin
      this + that
    rescue TypeError
      raise "#{this} and/or #{that} is not a number, try again..."
    end
  end

  def reverse(value)
    begin
      value.reverse
    rescue NoMethodError
      raise "#{value} is not a string, try again..."
    end
  end

  def get_quote()
    url = 'http://quotes.rest/qod.json?category=inspire'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash_response = JSON.parse(response)
    quote = hash_response["contents"]["quotes"][0]["quote"]
  end

end
