# spec/add_spec.rb
require 'spec_helper'
require_relative '../add'

RSpec.describe 'Add Method' do
  it 'adds two numbers correctly' do
    expect(add(2, 3)).to eq(5)
  end

  it 'returns the correct result for negative numbers' do
    expect(add(-1, -1)).to eq(-2)
  end

  it 'returns the correct result for mixed numbers' do
    expect(add(10, -5)).to eq(5)
  end
end
