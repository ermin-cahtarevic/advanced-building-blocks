# frozen_string_literal: true

def bubble_sort_by(array)
  n = array.length
  loop do
    swapped = false
    (1..n - 1).each do |i| 
      if yield(array[i - 1], array[i]).positive?
        array[i - 1], array[i] = array[i], array[i - 1]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

def bubble_sort(array)
  bubble_sort_by(array) { |a, b| a - b }
end

puts bubble_sort([4, 3, 78, 2, 0, 2]).to_s
