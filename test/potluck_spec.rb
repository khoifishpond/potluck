require 'rspec'
require './lib/dish'
require './lib/potluck'

describe Potluck do
  context 'Attributes' do
    potluck = Potluck.new("7-13-18")

    it 'exists' do
      expect(potluck).to be_a(Potluck)
    end
  end
end