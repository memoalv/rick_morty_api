require 'rick_morty_api/base'

module RickMortyApi
  class Character < RickMortyApi::Base
    FILTERS = {
      name: nil,
      status: %w[alive dead unknown],
      species: nil,
      type: nil,
      gender: %w[female male genderless unknown]
    }.freeze
  end
end
