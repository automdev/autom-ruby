# frozen_string_literal: true

require "autom"

client = Autom::Client.new # reads AUTOM_API_KEY
submitted = client.google_search(query: "web scraping api", is_async: true)
job = client.wait_for_job(submitted.data["job_id"]) { |j| puts "#{j['status']} #{j['progress']}%" }
puts job.data
