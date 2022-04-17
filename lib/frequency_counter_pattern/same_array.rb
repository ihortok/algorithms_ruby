# frozen_string_literal: true

require './autoload'

# solutions with nested loops
# O(n2)

def same_array_naive(arr1, arr2)
  return false unless arr1.size == arr2.size

  arr1.each { |i| return false unless arr2.find_index(i**2) }

  true
end

# solutions with hashes
# O(n)

def same_array_refactored(arr1, arr2)
  return false unless arr1.size == arr2.size

  hash2 = {}

  arr2.each { |n| hash2.has_key?(n) ? hash2[n] += 1 : hash2[n] = 1 }

  hash2_keys = hash2.keys

  arr1.each { |n| return false unless hash2_keys.include? n**2 }

  true
end
