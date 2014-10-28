class Pizza
  attr_reader :name, :description, :time_baked
  def initialize(name)
    @name = name
    @description = nil
    @time_baked = nil
  end
end
