# frozen_string_literal: true

require_relative "lib/autom/version"

Gem::Specification.new do |spec|
  spec.name = "autom"
  spec.version = Autom::VERSION
  spec.authors = ["Autom"]
  spec.email = ["contact@autom.dev"]

  spec.summary = "Official Ruby SDK for the Autom SERP API."
  spec.description = "Google, Bing and Brave search results as structured JSON — web, maps, news, shopping, images, jobs and AI Mode."
  spec.homepage = "https://www.autom.dev"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/automdev/autom-ruby/issues",
    "documentation_uri" => "https://docs.autom.dev",
    "homepage_uri" => spec.homepage,
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/automdev/autom-ruby"
  }

  spec.files = Dir["LICENSE", "README.md", "examples/**/*", "lib/**/*.rb", "sig/**/*.rbs"]
  spec.require_paths = ["lib"]
end
