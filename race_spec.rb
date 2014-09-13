require './race.rb'

describe 'puzzle 1' do
  it 'should return the second to last word of a decoded base64 string' do
    expect(first_puzzle('dGhhbmsgeW91IGZvciBhbGwgdGhlIGdyZWVuIGJlYW5pbmc=')).to eq('green')
    expect(first_puzzle('V2VubiBtYW4ga2VpbmUgQWhudW5nIGhhdCwgZWluZmFjaCBtYWwgZGllIEZyZXNzZSBoYWx0ZW4uLi4=')).to eq('Fresse')
  end
end

describe 'puzzle 2' do
  it 'should zip two arrays of integers, if all elements are divisible by 5' do
    expect(second_puzzle([5, 10, 15, 20], [20, 15, 10, 5])).to eq([[5, 20], [10, 15], [15, 10], [20, 5]])
  end
  it 'should return a string' do
    expect(second_puzzle([1, 2, 3, 4, 5], [50, 30, 20, 25, 5])).to eq("You don't have 5 on it!")
  end
end

describe 'puzzle 3' do
  it 'should return the sum of the addition of the first 1000 prime numbers' do
    expect(third_puzzle(1000, '+')).to eq(3682913)
  end
  it 'should return the product of the multiplication of the first 23 prime numbers' do
    expect(third_puzzle(23, '*')).to eq(267064515689275851355624017992790)
  end
end

describe 'puzzle 4' do
  it 'should add a $ in front of each element of an array of numbers' do
    expect(fourth_puzzle([1, 5, 6.87, 234.32])).to eq(["$1", "$5", "$6.87", "$234.32"])
  end
end

describe 'puzzle 5' do
  it 'should add 2 to a number' do
    expect(fifth_puzzle(5)).to eq(7)
  end
  it 'should handle all exceptions classy' do
    expect(fifth_puzzle('so long and thanks for all the fish')).to eq("I don't always catch exceptions, but when I do: 42")
  end
end
