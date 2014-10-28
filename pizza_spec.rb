require 'rspec'

describe 'Pizza' do
  it 'is a pizza' do
    expect(Pizza.new).to be_a Pizza
  end
end
