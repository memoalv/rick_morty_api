require 'rick_morty_api/response_parser'
require 'faraday'

module RickMortyApi
  class Base
    include ResponseParser

    attr_reader :details

    def initialize(details: false)
      @details = details
    end

    def base_url
      "https://rickandmortyapi.com/api"
    end

    def all(page = 1)
      request "?page=#{page}"
    end

    def by_ids(*args)
      request args.join(',')
    end

    def filter(params = {})
      query = params.map { |param, value| "#{param}=#{value}" }.join("&").prepend("?")

      request query
    end

    private

    def endpoint
      "#{base_url}/#{class_name}/"
    end

    def class_name
      self.class.name.split("::")[1].downcase
    end

    def request(url)
      response = Faraday.get "#{endpoint}#{url}"

      body = to_h(response.body)

      return body if !details

      {
        status: response.status,
        headers: response.headers,
        body: body
      }
    end
  end
end
