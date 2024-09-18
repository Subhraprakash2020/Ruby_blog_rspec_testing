require 'spec_helper'
require_relative '../fibonacci'

RSpec.describe 'Fibonacci Method' do
  it 'returns an empty array for 0' do
    expect(fibonacci(0)).to eq([])
  end

  it 'returns the first Fibonacci number for 1' do
    expect(fibonacci(1)).to eq([0])
  end

  it 'returns the first two Fibonacci numbers for 2' do
    expect(fibonacci(2)).to eq([0, 1])
  end

  it 'returns the correct sequence for 5' do
    expect(fibonacci(5)).to eq([0, 1, 1, 2, 3])
  end

  it 'returns the correct sequence for 10' do
    expect(fibonacci(10)).to eq([0, 1, 2, 2, 3, 5, 8, 13, 21, 34])
  end

  it 'returns the correct sequence for large numbers' do
    expect(fibonacci(15)).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377])
  end
end
