
def cutbar(m, n, current)
  if current > n
    0
  elsif current < m
    1 + cutbar(m, n, current * 2)
  else
    1 + cutbar(m, n, current + m)
  end
end

puts cutbar(5, 100, 1)

# わからんかった。
# n = 100
# m = 5

# i = 0
# array = []
# array << n
# loop do
#   i += 1
#   h = 0
#   k = 0
#   array.length.times do
#     j = array[k]
#     if j > 1
#       h += 1
#       if j.even?
#         array << j / 2
#         array << j / 2
#       else
#         array << j / 2
#         array << j / 2 + 1
#       end
#       array.shift
#     else
#       k += 1
#     end
#     break if h == 3 || h == i || array.all?(1)
#   end
#   p array
#   break if array.all?(1)
# end

# puts i