def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    for i in 1..n-1 do
      if array[i-1] > array[i] 
        array[i-1], array[i] = array[i], array[i-1]
        swapped = true
      end 
    end
    break if !swapped
  end
  return array
end   

puts bubble_sort([4,3,78,2,0,2])
      