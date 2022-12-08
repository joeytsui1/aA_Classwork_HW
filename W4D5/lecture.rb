def my_min2(arr) # o(n ^ 2)
  arr.each do |ele_1|
    if arr.none? { |ele_2| ele_2 < ele_1 }
      return ele_1
    end
  end
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p my_min2(list)  # =>  -5

def largest_sub_sum(arr)
    largest = 0
    current = 0

    i = 0
    j = 0

    while i < arr.length
        current = arr[i..j].sum
        if largest < current
            largest = current
        end
        j += 1

        if j == arr.length
            i += 1
            j = i
        end

    end
    return largest
end

list = [2, 3, -6, 7, -6, 7]
p largest_sub_sum(list) # => 8 (from [7, -6, 7])