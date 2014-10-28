class Pizza
  attr_reader :name, :description, :time_baked, :toppings

  def initialize(name)
    @name = name
    @description = nil
    @time_baked = 0
    @toppings = []
  end

  def required_bake_time
    1000
  end
end

class Topping
  attr_reader :name, :required_bake_time

  def initialize(name, required_bake_time)
    @name = name
    @required_bake_time = required_bake_time
  end
end
