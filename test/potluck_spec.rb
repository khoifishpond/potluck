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

  context 'Dishes' do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)

    it 'exists' do
      expect(couscous_salad).to be_a(Dish)
      expect(cocktail_meatballs).to be_a(Dish)
    end

    it 'can add a dish' do
      potluck.add_dish(couscous_salad)
      potluck.add_dish(cocktail_meatballs)

      expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    end
  end
end