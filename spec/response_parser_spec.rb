require "../lib/rick_morty_api/response_parser"

RSpec.describe RickMortyApi::ResponseParser do
  let(:parser) { RickMortyApi::ResponseParser }

  describe "#to_h" do
    it "parses json string into a hash" do
      hash = { "hello" => 1 }
      expect(parser.to_h('{"hello": 1}')).to eql hash
    end
  end
end
