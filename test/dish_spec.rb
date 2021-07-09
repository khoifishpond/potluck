require 'rspec'
require './lib/dish'

describe Dish do
  context 'Attributes' do
    dish = Dish.new("Couscous salad", :appetizer)
    
    it 'has a name' do
      expect(dish.name).to eq("Couscous salad")
    end

    it 'has a type' do
      expect(dish.type).to eq(:appetizer)
    end
  end
end