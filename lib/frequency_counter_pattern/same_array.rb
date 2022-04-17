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

  hash1 = {}
  hash2 = {}

  arr1.each { |n| hash1.has_key?(n) ? hash1[n] += 1 : hash1[n] = 1 }

  arr2.each { |n| hash2.has_key?(n) ? hash2[n] += 1 : hash2[n] = 1 }

  hash1_keys = hash1.keys
  hash2_keys = hash2.keys

  hash1_keys.each { |k| return false unless hash2_keys.include? k**2 }

  true
end
