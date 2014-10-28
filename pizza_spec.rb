require 'rspec'

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

end
