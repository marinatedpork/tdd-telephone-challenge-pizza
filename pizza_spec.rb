require 'rspec'
require_relative 'pizza'

describe 'Pizza' do
  let(:pizza) {Pizza.new("Pizza de Giovanni")}
  it 'is a pizza' do
    expect(pizza).to be_a Pizza
  end

  it 'has a name' do
    expect(pizza.name).to be_a String
  end

  it 'has a description' do
    pizza.should respond_to(:description)
  end

  it 'has a time_baked' do
    pizza.should respond_to(:time_baked)
  end

  it 'has a time baked that defaults to zero' do
    expect(pizza.time_baked).to eq(0)
  end

  it 'has toppings' do
    pizza.should respond_to(:toppings)
  end

  describe "#required_bake_time" do

    it 'has a required_bake_time' do
      pizza.should respond_to(:required_bake_time)
    end

    it 'returns a required bake time that is 900 plus the maximum bake time of its toppings' do
      topping_one = Topping.new("tomato", 50)
      topping_one = Topping.new("cheese", 70)
      topping_one = Topping.new("sausage", 100)
      expect(pizza.required_bake_time).to eq(1000)
    end

  end

end

describe 'Topping' do
  let(:tomato) {Topping.new("tomato", 50) }

  it 'has a name' do
    expect(tomato.name).to be_a String
  end

  it 'has a required_bake_time' do
    expect(tomato.required_bake_time).to be_an Integer
  end

end
