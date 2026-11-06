# frozen_string_literal: true

require "json"
require "autom"

client = Autom::Client.new # reads AUTOM_API_KEY
response = client.google_search(query: "web scraping api")
puts JSON.pretty_generate(response.data)
