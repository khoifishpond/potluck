class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
    @dishes
  end

  def get_all_from_category(category)
    @dishes.select { |dish| dish.category == category }
  end

  def menu
    categories = (@dishes.map { |dish| dish.category }).uniq
    menu = Hash.new
    
    categories.each do |category|
      dish_names = []
      
      @dishes.select do |dish|
        dish_names << dish.name if dish.category == category
      end
      menu[category] = dish_names.sort
    end
    menu
  end
end