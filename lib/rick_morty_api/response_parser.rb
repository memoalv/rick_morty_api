require 'json'

module RickMortyApi
  module ResponseParser
    def to_h(data)
      JSON.parse(data)
    end

    module_function :to_h
  end
end
