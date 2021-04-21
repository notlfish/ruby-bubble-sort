def bubble_sort(array)
  n = array.length - 2
  while n >= 0
    i = 0
    while i <= n
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
      i += 1
    end
    n -= 1
  end
  array
end

def bubble_sort_by(array)
  len = array.length - 1
  len.downto(1) do |bound|
    bound.times do |i|
      array[i], array[i + 1] = array[i + 1], array[i] if yield(array[i], array[i + 1]).positive?
    end
  end
  array
end
