def quick_sort(arr)
    return arr if arr.length <= 1
    pivot_arr = [arr.first]
    left_side = arr.select {|ele| el < arr.first}
    right_side = arr.select {|ele| el >= arr.first}
    quick_sort(left_side) + pivot_arr + quick_sort(right_side)
end