# frozen_string_literal: true

require "autom"

client = Autom::Client.new # reads AUTOM_API_KEY
begin
  response = client.request("GET", "/v1/usage")
  puts response.data if response.json?
rescue Autom::APIError => e
  warn "HTTP #{e.status}: #{e.message}"
end
