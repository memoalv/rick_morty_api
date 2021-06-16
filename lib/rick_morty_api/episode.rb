require 'rick_morty_api/base'

module RickMortyApi
  class Episode < RickMortyApi::Base
    FILTERS = {
      name: nil,
      episode: nil
    }.freeze
  end
end
