require 'rick_morty_api/base'

module RickMortyApi
  class Location < RickMortyApi::Base
    FILTERS = {
      name: nil,
      type: nil,
      dimension: nil
    }.freeze
  end
end
