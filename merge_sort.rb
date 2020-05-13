# This program takes in an array and
# returns a sorted array using a
# recursive merge sort methodology
require 'pry'

def merge_sort(ary)
  return ary if ary.size < 2

  half = (ary.length / 2)
  a = merge_sort(ary[ 0..half - 1])
  b = merge_sort(ary[half..ary.length])

  c = []
  until a.empty? || b.empty?
  a.first < b.first ? c << a.shift : c << b.shift
  end
  c + a + b
end

puts merge_sort([5, 8, 6, 15, 14, 2, 1, 7])
