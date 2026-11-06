# frozen_string_literal: true

# Generated from the Autom OpenAPI document. Do not edit by hand.

module Autom
  # One method per documented endpoint. Mixed into {Client}.
  module Operations
    # Bing Search. Query Bing Search via API and retrieve structured organic results (title, link, snippet, position). Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/bing/search+
    #
    # @param query [String] (required) The search query you want to run on Bing.
    # @param page [Numeric] Page number for pagination (1 = first page).
    # @param num [Numeric] Number of results per page (e.g. 10, 20, 50). This value is a suggestion.
    # @param location [String] Search origin location (e.g. city).
    # @param lat [Numeric] GPS latitude for the search origin.
    # @param lon [Numeric] GPS longitude for the search origin.
    # @param mkt [String] Market code where results come from (e.g. en-US). Cannot be used together with cc.
    # @param cc [String] Country code to search from (2-letter ISO 3166-1). Cannot be used together with mkt.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def bing_search(request_options: nil, **params)
      call_operation("bing_search", params, request_options)
    end

    # Brave Images. Search Brave Images via API and retrieve structured image results with pagination and SafeSearch. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/brave/images+
    #
    # @param query [String] (required) The search query you want to run on Brave Images.
    # @param page [Numeric] Page number for pagination (50 results per page).
    # @param gl [String] Country code (e.g. fr, us). Mapped to Brave country.
    # @param hl [String] Language code (e.g. fr, en). Mapped to Brave lang.
    # @param safe [String] SafeSearch: active | off | moderate | strict. Google-style active maps to Brave strict.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def brave_images(request_options: nil, **params)
      call_operation("brave_images", params, request_options)
    end

    # Brave Search. Search Brave Search via API and retrieve structured organic results with pagination. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/brave/search+
    #
    # @param query [String] (required) The search query you want to run on Brave Search.
    # @param page [Numeric] Page number for pagination.
    # @param gl [String] Country code, for example us, fr, gb, de.
    # @param hl [String] Language code, for example en, fr, de.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def brave_search(request_options: nil, **params)
      call_operation("brave_search", params, request_options)
    end

    # Brave Videos. Search Brave Videos via API and retrieve structured video results with pagination and SafeSearch. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/brave/videos+
    #
    # @param query [String] (required) The search query you want to run on Brave Videos.
    # @param page [Numeric] Page number for pagination.
    # @param gl [String] Country code (e.g. fr, us). Mapped to Brave country.
    # @param hl [String] Language code (e.g. fr, en). Mapped to Brave lang.
    # @param safe [String] SafeSearch: active | off | moderate | strict. Google-style active maps to Brave strict.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def brave_videos(request_options: nil, **params)
      call_operation("brave_videos", params, request_options)
    end

    # DuckDuckGo Search. Query DuckDuckGo via API and retrieve structured organic results with region and language. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/duckduckgo/search+
    #
    # @param query [String] (required) Search query sent to DuckDuckGo Search.
    # @param page [Numeric] Page number. Page 1 is the first page of results.
    # @param gl [String] Country code, for example us, fr, gb, de, jp.
    # @param hl [String] Language code, for example en, fr, de, ja, zh.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def duckduckgo_search(request_options: nil, **params)
      call_operation("duckduckgo_search", params, request_options)
    end

    # Google Countries. Search Google countries and retrieve country codes (free Finder endpoint).
    #
    # +GET /v1/finder/google-countries+
    #
    # @param query [String] (required) Filter countries by a search string (case-insensitive). Returns all countries whose code or name matches the specified query.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def finder_google_countries(request_options: nil, **params)
      call_operation("finder_google_countries", params, request_options)
    end

    # Google Languages. Search Google languages and retrieve language codes (free Finder endpoint).
    #
    # +GET /v1/finder/google-languages+
    #
    # @param query [String] (required) Filter languages by a search string (case-insensitive). Returns all languages whose names contain the specified string.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def finder_google_languages(request_options: nil, **params)
      call_operation("finder_google_languages", params, request_options)
    end

    # Google Locations. Find supported Google locations and retrieve location IDs and country codes (free endpoint).
    #
    # +GET /v1/finder/google-locations+
    #
    # @param query [String] (required) Search locations supported by Piloterr (cities, countries, etc.) by providing a query string. Returns matching locations ordered by reach.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def finder_google_locations(request_options: nil, **params)
      call_operation("finder_google_locations", params, request_options)
    end

    # Google Images. Search Google Images via API and retrieve image results (URLs, titles, sources, dimensions). Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/images+
    #
    # @param query [String] (required) Query you want to search on Google Images (e.g. "lion", "nike logo", "modern house exterior").
    # @param page [Numeric] Page number for pagination (1 = first page).
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param async [Boolean] If true, returns a job and lets you fetch results asynchronously.
    # @param safe [String] Adult content filter. active enables Google SafeSearch; off disables it. Omit to use Google default.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_images(request_options: nil, **params)
      call_operation("google_images", params, request_options)
    end

    # Google Jobs. Scrape Google Jobs results via API and retrieve structured job listings with title, company, location, and pagination. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/jobs+
    #
    # @param query [String] (required) The job search query to run on Google Jobs (e.g. developer, barista new york).
    # @param uds [String] Advanced search filters string for Google Jobs (encoded filter chips).
    # @param lrad [Numeric] Search radius in kilometers. Does not strictly limit the radius, but influences result proximity.
    # @param ltype [Numeric] Filter results by work type. Set to 1 to filter for work from home / remote jobs.
    # @param location [String] Human-readable location to originate the search from (e.g. New York, NY, Paris, France). If several locations match, the most popular one is used. Note: location and uule cannot be used together.
    # @param uule [String] Google encoded location parameter. Use for precise geo targeting. Note: uule and location cannot be used together.
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param next_page_token [String] Token to fetch the next page of results. Returned in the serpapi_pagination.next_page_token field of the previous response.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_jobs(request_options: nil, **params)
      call_operation("google_jobs", params, request_options)
    end

    # Google Maps. Search Google Maps via API and retrieve structured place results (address, website, phone). Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/maps+
    #
    # @param query [String] (required) Search query for Google Maps (e.g. business type, brand, or place name).
    # @param page [Numeric] Page number for pagination (1 = first page).
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param ll [String] Map center / geo hint in Google format (e.g. @43.5131985,1.4600501,60m). Helps focus results around a coordinate and zoom radius.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_maps(request_options: nil, **params)
      call_operation("google_maps", params, request_options)
    end

    # Google News. Search Google News via API and retrieve structured news results with pagination. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/news+
    #
    # @param query [String] (required) Query to search on Google News (keywords, company, topic).
    # @param page [Numeric] Page number for pagination (1 = first page).
    # @param num [Numeric] Maximum number of results per page (e.g. 10).
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_news(request_options: nil, **params)
      call_operation("google_news", params, request_options)
    end

    # Google Search. Scrape Google Search results via API and retrieve structured SERP data with pagination. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/search+
    #
    # @param query [String] (required) The search query you want to run on Google (supports advanced operators like site:, inurl:, intitle:).
    # @param tbs [String] Advanced search filters string (e.g. time ranges: qdr:h last hour, qdr:d last day, qdr:w last week, qdr:m last month, qdr:y last year).
    # @param safe [String] Adult content filter. active enables Google SafeSearch; off disables it. Omit to use Google default.
    # @param location [String] Human-readable location to originate the search from (e.g. New York, NY, Paris, France). If several locations match, the most popular one is used. Note: location and uule cannot be used together.
    # @param uule [String] Google encoded location parameter. Use for precise geo targeting. Note: uule and location cannot be used together.
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param page [Numeric] Page number / offset used for pagination.
    # @param num [Numeric] Maximum number of results to return per page (deprecated).
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_search(request_options: nil, **params)
      call_operation("google_search", params, request_options)
    end

    # Google AI Mode. Query Google AI Mode via API. JSON with text_blocks, references, and shopping_results. Credit cost: 3 credits per call.
    #
    # +GET / POST /v1/google/search/ai+
    #
    # @param query [String] (required) The question or search query you want Google AI Mode to answer (supports advanced operators like site:, inurl:, intitle:).
    # @param location [String] Human-readable location to originate the search from (e.g. New York, NY, Paris, France). If several locations match, the most popular one is used. Note: location and uule cannot be used together.
    # @param uule [String] Google encoded location parameter. Use for precise geo targeting. Note: uule and location cannot be used together.
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_search_ai(request_options: nil, **params)
      call_operation("google_search_ai", params, request_options)
    end

    # Google Search Autocomplete. Get Google Search autocomplete suggestions via API for a given query. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/search/autocomplete+
    #
    # @param query [String] (required) The search query for which you want to get autocomplete suggestions.
    # @param cp [Numeric] Cursor position in the search query where you want to get autocomplete suggestions.
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_search_autocomplete(request_options: nil, **params)
      call_operation("google_search_autocomplete", params, request_options)
    end

    # Google Search Light. Scrape lightweight Google Search results via API: fast, cost-efficient, organic results only. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/search/light+
    #
    # @param query [String] (required) The search query you want to run on Google (supports advanced operators like site:, inurl:, intitle:).
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_search_light(request_options: nil, **params)
      call_operation("google_search_light", params, request_options)
    end

    # Google Shopping. Scrape Google Shopping results via API and retrieve structured product listings with prices, ratings, and merchant data. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/shopping+
    #
    # @param query [String] (required) Query to search on Google Shopping (product name, brand, category).
    # @param page [Numeric] Page number for pagination (1 = first page).
    # @param location [String] Location to localize results (e.g. New York, United States). Generates a UULE parameter automatically.
    # @param uule [String] Encoded location parameter (UULE). Use location instead if you don't have a pre-encoded value.
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param safe [String] Adult content filter. active enables Google SafeSearch; off disables it. Omit to use Google default.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_shopping(request_options: nil, **params)
      call_operation("google_shopping", params, request_options)
    end

    # Google Videos. Search Google Videos via API and retrieve structured video results with metadata. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/google/videos+
    #
    # @param query [String] (required) The search query you want to run on Google Videos.
    # @param location [String] Human-readable location to originate the search from. Note: location and uule cannot be used together.
    # @param uule [String] Google encoded location parameter. Note: uule and location cannot be used together.
    # @param google_domain [String] Google domain to use for the search. Defaults to google.com.
    # @param gl [String] Country to use for the Google search. Two-letter country code (e.g. us for the United States, uk for United Kingdom, or fr for France).
    # @param hl [String] Language to use for the Google search. Two or three-letter language code (e.g. en, es, fr), optionally followed by a region code (e.g. en-gb, es-419).
    # @param cr [String] Limit results to one or more countries. Use country{XX} with | as delimiter (e.g. countryFR|countryDE).
    # @param lr [String] Limit results to one or more languages. Use lang_{xx} with | as delimiter (e.g. lang_fr|lang_de).
    # @param page [Numeric] (required) Page number for pagination (1 = first page).
    # @param num [Numeric] Maximum number of results per page (e.g. 10).
    # @param safe [String] Adult content filter. active enables Google SafeSearch; off disables it. Omit to use Google default.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def google_videos(request_options: nil, **params)
      call_operation("google_videos", params, request_options)
    end

    # Jobs. Poll the status, progress (0–100) and result of a job started with is_async=true. Polling is free. Poll until status is terminal: CompletedJob, Error, NotFound or BadRequest.
    #
    # +GET /v1/jobs/{id}+
    #
    # @param id [String] (required) The job_id returned by an endpoint called with is_async=true.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def jobs(request_options: nil, **params)
      call_operation("jobs", params, request_options)
    end

    # Search. One call walks engines in order and returns the first organic results. engines=auto tries Google, then Brave, Bing, DuckDuckGo, Yahoo, and Baidu. Omitted gl is us and omitted hl is en. There is no page parameter: the response is always pag… Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/search+
    #
    # @param query [String] (required) Search query.
    # @param engines [String] Engine order. Default auto tries google, brave, bing, duckduckgo, yahoo, then baidu. A comma-separated list is followed as given. ddg and duck mean duckduckgo. Unknown names are ignored.
    # @param gl [String] Country code. Defaults to us when omitted. For example us, fr, gb, de.
    # @param hl [String] Language code. Defaults to en when omitted. For example en, fr, de.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def search(request_options: nil, **params)
      call_operation("search", params, request_options)
    end

    # Stats. Infrastructure health for an engine or endpoint over the last hour. Not scoped to your account or tenant. Enabled per account: HTTP 403 means contact support to activate it.
    #
    # +GET /v1/stats+
    #
    # @param engine [String] API family to check, for example google. Provide at least engine or path.
    # @param path [String] Specific endpoint to check, for example /v1/google/search. If you also pass engine, use an endpoint from that API.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def stats(request_options: nil, **params)
      call_operation("stats", params, request_options)
    end

    # Usage. Retrieve real-time usage statistics and credit balance for your Autom account.
    #
    # +GET /v1/usage+
    #
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def usage(request_options: nil, **params)
      call_operation("usage", params, request_options)
    end

    # Yahoo Search. Query Yahoo via API and retrieve structured organic results with country and language. Credit cost: 1 credit per call.
    #
    # +GET / POST /v1/yahoo/search+
    #
    # @param query [String] (required) Search query sent to Yahoo Search.
    # @param page [Numeric] Page number. Page 1 is the first page of results.
    # @param gl [String] Country code, for example us, fr, gb, de, jp.
    # @param hl [String] Language code, for example en, fr, de, ja, zh.
    # @param fields [String] Comma-separated list of fields to keep in the response, with dot notation for nested fields (e.g. name,location.city). Does not change the credit cost.
    # @param is_async [Boolean] Process the request asynchronously: the response is a job_id to poll on /v1/jobs/{id} (see waitForJob).
    # @param soft_fail [Boolean] Return HTTP 200 even when an error occurs; the error is then in the response body.
    # @param request_options [Hash, nil] +:method+ ("GET"/"POST"), +:timeout+ (seconds), +:headers+
    # @return [JsonResponse]
    def yahoo_search(request_options: nil, **params)
      call_operation("yahoo_search", params, request_options)
    end
  end
end
