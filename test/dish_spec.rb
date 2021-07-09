require 'rspec'
require './lib/dish'

describe Dish do
  context 'Attributes' do
    dish = Dish.new("Couscous salad", :appetizer)

    it 'exists' do
      expect(dish).to be_a(Dish)
    end
    
    it 'has a name' do
      expect(dish.name).to eq("Couscous salad")
    end

    it 'has a category' do
      expect(dish.category).to eq(:appetizer)
    end
  end
end