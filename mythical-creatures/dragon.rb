class Dragon

  attr_reader :name, :color, :rider, :hungry, :meal_timer

  def initialize(name, color, rider)
    @name = name
    @hungry = true
    @color = color
    @rider = rider
    @meal_timer = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @meal_timer += 1
    if @meal_timer >= 3
      @hungry = false
    end
  end

end
