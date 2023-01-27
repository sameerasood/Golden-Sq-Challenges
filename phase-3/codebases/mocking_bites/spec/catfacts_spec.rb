require 'catfacts'

RSpec.describe CatFacts do
    it "returns facts about cats" do
        fake_catfact = double :requester
        allow(fake_catfact).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Cat families usually play best in even numbers. Cats and kittens should be acquired in pairs whenever possible.","length":111}')
        cat_facts = CatFacts.new(fake_catfact)
        expect(cat_facts.provide).to eq "Cat fact: Cat families usually play best in even numbers. Cats and kittens should be acquired in pairs whenever possible."
    end
end