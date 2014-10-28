class Pizza
  attr_reader :name, :description, :time_baked, :toppings
  def initialize(name)
    @name = name
    @description = nil
    @time_baked = 0
    @toppings = nil
  end

  def required_bake_time
    901
  end
end
