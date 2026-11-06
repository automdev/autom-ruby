# frozen_string_literal: true

# Generated from the Autom OpenAPI document. Do not edit by hand.

module Autom
  # Path, methods, response kind and parameter names of every documented operation.
  ENDPOINTS = {
    "bing_search" => {
      path: "/v1/bing/search",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "num", "location", "lat", "lon", "mkt", "cc", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "brave_images" => {
      path: "/v1/brave/images",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "gl", "hl", "safe", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "brave_search" => {
      path: "/v1/brave/search",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "gl", "hl", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "brave_videos" => {
      path: "/v1/brave/videos",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "gl", "hl", "safe", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "duckduckgo_search" => {
      path: "/v1/duckduckgo/search",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "gl", "hl", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "finder_google_countries" => {
      path: "/v1/finder/google-countries",
      methods: ["GET"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "finder_google_languages" => {
      path: "/v1/finder/google-languages",
      methods: ["GET"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "finder_google_locations" => {
      path: "/v1/finder/google-locations",
      methods: ["GET"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_images" => {
      path: "/v1/google/images",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "google_domain", "gl", "hl", "cr", "lr", "async", "safe", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_jobs" => {
      path: "/v1/google/jobs",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "uds", "lrad", "ltype", "location", "uule", "google_domain", "gl", "hl", "cr", "lr", "next_page_token", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_maps" => {
      path: "/v1/google/maps",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "google_domain", "gl", "hl", "cr", "lr", "ll", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_news" => {
      path: "/v1/google/news",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "num", "google_domain", "gl", "hl", "cr", "lr", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_search" => {
      path: "/v1/google/search",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "tbs", "safe", "location", "uule", "google_domain", "gl", "hl", "cr", "lr", "page", "num", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_search_ai" => {
      path: "/v1/google/search/ai",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "location", "uule", "google_domain", "gl", "hl", "cr", "lr", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_search_autocomplete" => {
      path: "/v1/google/search/autocomplete",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "cp", "google_domain", "gl", "hl", "cr", "lr", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_search_light" => {
      path: "/v1/google/search/light",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "google_domain", "gl", "hl", "cr", "lr", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_shopping" => {
      path: "/v1/google/shopping",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "location", "uule", "google_domain", "gl", "hl", "cr", "lr", "safe", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "google_videos" => {
      path: "/v1/google/videos",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query", "page"].freeze,
      params: ["query", "location", "uule", "google_domain", "gl", "hl", "cr", "lr", "page", "num", "safe", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "jobs" => {
      path: "/v1/jobs/{id}",
      methods: ["GET"].freeze,
      response: :json,
      required: ["id"].freeze,
      params: ["id"].freeze
    }.freeze,
    "search" => {
      path: "/v1/search",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "engines", "gl", "hl", "fields", "is_async", "soft_fail"].freeze
    }.freeze,
    "stats" => {
      path: "/v1/stats",
      methods: ["GET"].freeze,
      response: :json,
      required: [].freeze,
      params: ["engine", "path"].freeze
    }.freeze,
    "usage" => {
      path: "/v1/usage",
      methods: ["GET"].freeze,
      response: :json,
      required: [].freeze,
      params: [].freeze
    }.freeze,
    "yahoo_search" => {
      path: "/v1/yahoo/search",
      methods: ["GET", "POST"].freeze,
      response: :json,
      required: ["query"].freeze,
      params: ["query", "page", "gl", "hl", "fields", "is_async", "soft_fail"].freeze
    }.freeze
  }.freeze
end
