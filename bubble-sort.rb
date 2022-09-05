#bubble sorter:
def bubble_sort(arr)
  push_me = []
  loop do
    check_me = arr.dup
    while arr.length > 0 do
      arr = arr.drop(2).unshift(arr[1], arr[0]) if arr[1] != nil && arr[0] > arr [1] 
      push_me.push(arr.shift)
    end
    arr = push_me
    push_me = []
    break if check_me == arr
  end
  arr
end

#tester:
def tester
  rand_arr = []
  rand(2..25).times do
    rand_arr.push(rand(300))
  end
  puts "\nIt is #{rand_arr.sort == bubble_sort(rand_arr.dup)} that the random array\n\n#{rand_arr}\n\nwas properly sorted to\n\n#{bubble_sort(rand_arr)}."
end
 
tester