# frozen_string_literal: true

require 'rspec'
require './lib/frequency_counter_pattern/same_array'

RSpec.describe 'same array' do
  describe 'naive' do
    context 'when second array contains squared values of first array' do
      it 'returns true' do
        expect(same_array_naive([1, 2, 3, 2, 1], [4, 4, 1, 1, 9])).to be true
        expect(same_array_naive([1, 2, 3], [4, 1, 9])).to be true
      end
    end

    context 'when second array contains squared values of first array' do
      it 'returns false' do
        expect(same_array_naive([1, 2, 3], [4, 1, 9, 2])).to be false
        expect(same_array_naive([1, 2, 3], [4, 9, 4])).to be false
      end
    end
  end

  describe 'refactored' do
    context 'when second array contains squared values of first array' do
      it 'returns true' do
        expect(same_array_refactored([1, 2, 3, 2, 1], [4, 4, 1, 1, 9])).to be true
        expect(same_array_refactored([1, 2, 3], [4, 1, 9])).to be true
      end
    end

    context 'when second array contains squared values of first array' do
      it 'returns false' do
        expect(same_array_refactored([1, 2, 3], [4, 1, 9, 2])).to be false
        expect(same_array_refactored([1, 2, 3], [4, 9, 4])).to be false
      end
    end
  end
end
