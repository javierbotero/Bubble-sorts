def bubble_sort (arr)
  i = 0
  while i < arr.length - 1
    puts "While is true"
    if arr[i] > arr[i + 1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
    end
  i += 1
  end
  return arr
end

puts bubble_sort([23, 4, 11, 10])
