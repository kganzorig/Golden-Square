require '03_api_requests_bite'
require 'URI'

RSpec.describe CatFacts do
  it 'calls an API to provide cat facts' do
    requester_dbl = double :requester
    expect(requester_dbl).to receive(:get)
    .with(URI("https://catfact.ninja/fact"))
    .and_return('{"fact" : "Cats are now Britain\'s favourite pet: there are 7.7 million cats as opposed to 6.6 million dogs.","length":96}')

    cat_facts = CatFacts.new(requester_dbl)
    result = cat_facts.provide
    expect(result).to eq "Cat fact: Cats are now Britain\'s favourite pet: there are 7.7 million cats as opposed to 6.6 million dogs."
  end
end 