# while arr.length > 0 do
#   arr = switch(arr) if arr[1] != nil && arr[0] > arr [1] 
#   arr2.push(arr.shift)
# end

# arr = arr2
# arr2 = []

def switch(arr)
  arr.drop(2).unshift(arr[1],arr[0]) 
end

arr = [4,3,78,2,0,2]
push_me = []



# until arr = arr.sort do
#   while arr.length > 0 do
#     arr = switch(arr) if arr[1] != nil && arr[0] > arr [1] 
#     push_me.push(arr.shift)
#   end
#   arr = push_me
#   push_me = []
# end

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