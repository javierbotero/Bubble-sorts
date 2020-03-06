def bubble_sort(arr)
  (arr.length - 1).times do |k|
    i = 0

    while i < arr.length - 1 - k
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]

      i += 1
    end
  end

  arr
end

def bubble_sort_by(arr)
  (arr.length - 1).times do |k|
    i = 0

    while i < arr.length - 1 - k
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?

      i += 1
    end
  end

  arr
end

puts bubble_sort([23, 4, 34, 23, 12, 1, 6, 453, 3, 9, 7, 54, 32, 10])

puts bubble_sort_by([23, 4, 34, 23, 12, 1, 6, 453, 3, 9, 7, 54, 32, 10]) { |x, y|
  y <=> x
}
