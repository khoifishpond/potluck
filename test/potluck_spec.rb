require 'rspec'
require './lib/dish'
require './lib/potluck'

describe Potluck do
  context 'Attributes' do
    potluck = Potluck.new("7-13-18")

    it 'exists' do
      expect(potluck).to be_a(Potluck)
    end

    it 'has a date' do
      expect(potluck.date).to eq("7-13-18")
    end

    it 'has dishes' do
      expect(potluck.dishes).to eq([])
    end
  end
end