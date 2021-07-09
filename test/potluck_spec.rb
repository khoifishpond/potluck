require 'rspec'
require './lib/dish'
require './lib/potluck'

describe Potluck do
  potluck = Potluck.new("7-13-18")

  context 'Attributes' do
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
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entree)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    candy_salad = Dish.new("Candy Salad", :dessert)

    it 'exists' do
      expect(couscous_salad).to be_a(Dish)
      expect(cocktail_meatballs).to be_a(Dish)
    end

    it 'can add a dish' do
      expect(potluck.dishes).to eq([])

      potluck.add_dish(couscous_salad)
      expect(potluck.dishes).to eq([couscous_salad])

      potluck.add_dish(summer_pizza)
      expect(potluck.dishes).to eq([couscous_salad, summer_pizza])

      potluck.add_dish(roast_pork)
      expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork])

      potluck.add_dish(cocktail_meatballs)
      expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])

      potluck.add_dish(candy_salad)
      expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])
    end

    it 'can get all dishes from a category' do
      expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
    end
  end
end