require "../lib/rick_morty_api/base"

RSpec.describe RickMortyApi::Base do
  let(:base) { RickMortyApi::Base.new(details: true) }

  describe "#base_url" do
    it "returns the base url for the api" do
      expect(base.base_url).to eql "https://rickandmortyapi.com/api"
    end
  end

  describe "#all" do
    it "returns a 200" do
      puts base.all
    end


  end
end