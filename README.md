# Autom Ruby SDK

The official Ruby SDK for the [Autom](https://www.autom.dev) SERP API.

Google, Bing and Brave search results as structured JSON — web, maps, news, shopping, images, jobs and AI Mode.

The SDK exposes **23 methods**, one per documented endpoint, plus a generic `request`. It only uses the Ruby standard library.

## Requirements

- Ruby 3.1 or newer

## Installation

```sh
gem install autom
```

Or in your `Gemfile`:

```ruby
gem "autom"
```

## Get your API key

[Sign up for Autom](https://app.autom.dev/register) or sign in, then copy your API key from the [dashboard](https://app.autom.dev). The client reads `ENV["AUTOM_API_KEY"]` when no key is passed.

## Quick start

```ruby
require "autom"

client = Autom::Client.new(api_key: ENV.fetch("AUTOM_API_KEY"))
response = client.google_search(query: "web scraping api")
puts response.data
```

Keyword arguments use the parameter names of the [API reference](https://docs.autom.dev). Unknown names raise `Autom::SerializationError`; use `request` for undocumented parameters.

## Async jobs

Any call accepts `is_async: true` (useful past the 60-second server limit): the response is then a `job_id`. `wait_for_job` polls `GET /v1/jobs/{id}` until a terminal status (`CompletedJob`, `Error`, `NotFound`, `BadRequest`):

```ruby
submitted = client.google_search(query: "web scraping api", is_async: true)
job = client.wait_for_job(submitted.data["job_id"]) { |j| puts "#{j['status']} #{j['progress']}%" }
puts job.data
```

## GET or POST

Methods use GET when the endpoint supports it (query string). POST sends the same parameters as JSON:

```ruby
client.bing_search(query: "test", request_options: { method: "POST" })
```

`nil` values are omitted, `false` and `0` are sent, and arrays repeat the parameter name.

## Any endpoint

```ruby
response = client.request("GET", "/v1/usage")
```

## Errors

```ruby
begin
  client.google_search(query: "web scraping api")
rescue Autom::APIError => e
  warn "HTTP #{e.status}: #{e.message}"
end
```

| Error | When |
| --- | --- |
| `Autom::ConfigurationError` | Missing API key, invalid options or unsupported method. |
| `Autom::SerializationError` | A required parameter is missing, unknown or can't be sent. |
| `Autom::TransportError` | Network failure or timeout. |
| `Autom::APIError` | Non-2xx status (`status`, `error_message`, `response_body`, `raw_response`). |
| `Autom::ResponseDecodingError` | A success response could not be decoded. |

All of them inherit from `Autom::Error`.

## Retries

Requests are retried up to 3 times after a network error, a `408`, `500`, `502`, `503` or `504`, or a rate limit — which the API returns as `401` (or `429`) with a `Rate limit exceeded` message. Per-key quota errors (`…: quota daily`) are not retried, nor are `400`, `402`, `404` or client-side timeouts. The delay starts at 1 second and grows 1.5× per retry (capped at 30 seconds); a `Retry-After` header wins.

```ruby
client = Autom::Client.new(max_retries: 5, retry_delay: 0.5)
client.google_search(query: "web scraping api", request_options: { max_retries: 0 }) # one request without retries
```

## Batch requests

`batch` runs the block for every item on 10 threads (`concurrency:`) and returns one `BatchResult` per item, in input order. A failing item never stops the others.

```ruby
inputs = ["web scraping api", "serp api", "rank tracker"]
results = client.batch(inputs, concurrency: 5) { |value| client.google_search(query: value) }
results.each do |result|
  if result.ok?
    puts result.value.data
  else
    warn "#{inputs[result.index]}: #{result.error.message}"
  end
end
```

| Constant | Default | Description |
| --- | --- | --- |
| `Autom::Client::DEFAULT_CONCURRENCY` | `10` | Tasks run at the same time by batch |
| `Autom::Client::DEFAULT_TIMEOUT` | `120` | Request timeout (seconds) |
| `Autom::Client::MAX_RETRIES` | `3` | Retry attempts after a network error, a 408/5xx or a rate limit |
| `Autom::Client::RETRY_BACKOFF_FACTOR` | `1.5` | Exponential backoff multiplier |
| `Autom::Client::DEFAULT_RETRY_DELAY` | `1.0` | Delay before the first retry (seconds) |

## Timeouts and custom transports

```ruby
client = Autom::Client.new(timeout: 60) # seconds, default 120
client.google_search(query: "web scraping api", request_options: { timeout: 30 })
```

A transport is any object with `call(method:, url:, headers:, body:, timeout:)` returning `[status, headers, body]`; the default is `Autom::NetHTTPTransport`.

## Endpoints

23 methods, generated from the [OpenAPI document](https://app.autom.dev/openapi).

| Method | HTTP | Description |
| --- | --- | --- |
| `bing_search` | GET / POST `/v1/bing/search` | Query Bing Search via API and retrieve structured organic results (title, link, snippet, position). |
| `brave_images` | GET / POST `/v1/brave/images` | Search Brave Images via API and retrieve structured image results with pagination and SafeSearch. |
| `brave_search` | GET / POST `/v1/brave/search` | Search Brave Search via API and retrieve structured organic results with pagination. |
| `brave_videos` | GET / POST `/v1/brave/videos` | Search Brave Videos via API and retrieve structured video results with pagination and SafeSearch. |
| `duckduckgo_search` | GET / POST `/v1/duckduckgo/search` | Query DuckDuckGo via API and retrieve structured organic results with region and language. |
| `finder_google_countries` | GET `/v1/finder/google-countries` | Search Google countries and retrieve country codes (free Finder endpoint). |
| `finder_google_languages` | GET `/v1/finder/google-languages` | Search Google languages and retrieve language codes (free Finder endpoint). |
| `finder_google_locations` | GET `/v1/finder/google-locations` | Find supported Google locations and retrieve location IDs and country codes (free endpoint). |
| `google_images` | GET / POST `/v1/google/images` | Search Google Images via API and retrieve image results (URLs, titles, sources, dimensions). |
| `google_jobs` | GET / POST `/v1/google/jobs` | Scrape Google Jobs results via API and retrieve structured job listings with title, company, location, and pagination. |
| `google_maps` | GET / POST `/v1/google/maps` | Search Google Maps via API and retrieve structured place results (address, website, phone). |
| `google_news` | GET / POST `/v1/google/news` | Search Google News via API and retrieve structured news results with pagination. |
| `google_search` | GET / POST `/v1/google/search` | Scrape Google Search results via API and retrieve structured SERP data with pagination. |
| `google_search_ai` | GET / POST `/v1/google/search/ai` | Query Google AI Mode via API. JSON with text_blocks, references, and shopping_results. |
| `google_search_autocomplete` | GET / POST `/v1/google/search/autocomplete` | Get Google Search autocomplete suggestions via API for a given query. |
| `google_search_light` | GET / POST `/v1/google/search/light` | Scrape lightweight Google Search results via API: fast, cost-efficient, organic results only. |
| `google_shopping` | GET / POST `/v1/google/shopping` | Scrape Google Shopping results via API and retrieve structured product listings with prices, ratings, and merchant data. |
| `google_videos` | GET / POST `/v1/google/videos` | Search Google Videos via API and retrieve structured video results with metadata. |
| `jobs` | GET `/v1/jobs/{id}` | Poll the status, progress (0–100) and result of a job started with is_async=true. Polling is free. Poll until status is terminal: Completed… |
| `search` | GET / POST `/v1/search` | One call walks engines in order and returns the first organic results. engines=auto tries Google, then Brave, Bing, DuckDuckGo, Yahoo, and… |
| `stats` | GET `/v1/stats` | Infrastructure health for an engine or endpoint over the last hour. Not scoped to your account or tenant. Enabled per account: HTTP 403 mea… |
| `usage` | GET `/v1/usage` | Retrieve real-time usage statistics and credit balance for your Autom account. |
| `yahoo_search` | GET / POST `/v1/yahoo/search` | Query Yahoo via API and retrieve structured organic results with country and language. |

## All Autom SDKs

| SDK | Package | Install |
| --- | --- | --- |
| Node.js | [`@automdev/sdk`](https://www.npmjs.com/package/@automdev/sdk) | `npm install @automdev/sdk` |
| Python | [`automdev`](https://pypi.org/project/automdev/) | `pip install automdev` |
| Go | [`autom-go`](https://pkg.go.dev/github.com/automdev/autom-go) | `go get github.com/automdev/autom-go` |
| .NET | [`Autom`](https://www.nuget.org/packages/Autom) | `dotnet add package Autom` |
| Ruby | [`autom`](https://rubygems.org/gems/autom) | `gem install autom` |
| PHP | [`autom/sdk`](https://packagist.org/packages/autom/sdk) | `composer require autom/sdk` |
| Java | [`autom-java`](https://github.com/automdev/autom-java) | build from source, see its README |
| CLI | [`@automdev/cli`](https://www.npmjs.com/package/@automdev/cli) | `npm install -g @automdev/cli` |
| MCP server | [`@automdev/mcp`](https://www.npmjs.com/package/@automdev/mcp) | `npx -y @automdev/mcp` |

## License

MIT — see [LICENSE](LICENSE).
