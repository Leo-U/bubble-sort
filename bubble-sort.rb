arr = [4,3,78,2,0,2]

def bubble_sort (arr)
  def switch(arr)
    arr.drop(2).unshift(arr[1],arr[0]) 
  end
  push_me = []
  loop do
    check_me = arr.dup
    while arr.length > 0 do
      arr = switch(arr) if arr[1] != nil && arr[0] > arr [1] 
      push_me.push(arr.shift)
    end
    arr = push_me
    push_me = []
    break if check_me == arr
  end
  arr
end

puts "#{arr} is sorted to #{bubble_sort(arr)}."