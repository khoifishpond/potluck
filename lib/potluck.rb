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
    menu = Hash.new

    @dishes.each do |dish|
      menu[dish.category] ||= []
      menu[dish.category] << dish.name
      menu[dish.category].sort!
    end
    menu
  end

  def ratio(category)
    dish_count = @dishes.count { |dish| dish.category == category }

    dish_count.fdiv(@dishes.size) * 100
  end
end