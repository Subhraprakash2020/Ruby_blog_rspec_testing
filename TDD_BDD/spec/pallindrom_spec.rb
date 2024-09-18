# spec/palindrome_spec.rb
require 'spec_helper'
require_relative '../palindrome'

RSpec.describe 'Palindrome Method' do
  it 'returns true for a palindrome number' do
    expect(palindrome?(121)).to eq(true)
  end

  it 'returns false for a non-palindrome number' do
    expect(palindrome?(123)).to eq(false)
  end

  it 'returns true for a single digit number' do
    expect(palindrome?(7)).to eq(true)
  end

  it 'returns true for a number with an even number of digits' do
    expect(palindrome?(1221)).to eq(true)
  end

  it 'returns false for a negative number' do
    expect(palindrome?(-121)).to eq(false)
  end

  it 'returns true for a number with trailing zeros like 1001' do
    expect(palindrome?(1001)).to eq(true)
  end
end
