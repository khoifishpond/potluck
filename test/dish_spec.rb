require 'rspec'
require './lib/dish'

describe Dish do
  context 'Attributes' do
    dish = Dish.new("Couscous salad", :appetizer)
    
    it 'has a name' do
      expect(dish.name).to eq("Couscous salad")
    end
  end
end