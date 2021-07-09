require 'rspec'
require './lib/dish'
require './lib/potluck'

describe Potluck do
  potluck = Potluck.new("7-13-18")
  couscous_salad = Dish.new("Couscous Salad", :appetizer)
  summer_pizza = Dish.new("Summer Pizza", :appetizer)
  roast_pork = Dish.new("Roast Pork", :entree)
  cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
  candy_salad = Dish.new("Candy Salad", :dessert)
  bean_dip = Dish.new("Bean Dip", :appetizer)

  context 'Attributes' do
    it 'exists' do
      expect(potluck).to be_a(Potluck)
    end

    it 'has a date' do
      expect(potluck.date).to eq("7-13-18")
    end

    it 'stars with no dishes' do
      expect(potluck.dishes).to eq([])
    end
  end

  context 'Dishes' do
    it 'exists' do
      expect(couscous_salad).to be_a(Dish)
      expect(summer_pizza).to be_a(Dish)
      expect(roast_pork).to be_a(Dish)
      expect(cocktail_meatballs).to be_a(Dish)
      expect(candy_salad).to be_a(Dish)
      expect(bean_dip).to be_a(Dish)
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

      potluck.add_dish(bean_dip)
      expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad, bean_dip])
    end

    it 'can get all dishes from a category' do
      expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza, bean_dip])
      expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
      expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
    end
  end

  context 'Menu' do
    it 'can sort as menu items' do
      expect(potluck.menu).to be_a(Hash)
      expect(potluck.menu[:appetizer]).to eq([bean_dip.name, couscous_salad.name, summer_pizza.name])
      expect(potluck.menu[:entree]).to eq([cocktail_meatballs.name, roast_pork.name])
      expect(potluck.menu[:dessert]).to eq([candy_salad.name])
    end

    it 'can calculate ratios of categories' do
      expect(potluck.ratio(:appetizer)).to eq(50.0)
    end
  end
end