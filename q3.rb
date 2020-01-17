# cards = [0] * 100

# cards.length.times do |n|
#   next if n == 0 || n == 1

#   i = 0
#   while i < cards.length
#     i += (n - 1)
#     cards[i] = cards[i] == 0 ? 1 : 0
#   end
# end

# puts cards

N = 100
cards = Array.new(N, false)

(2..N).each do |i|
  j = i - 1
  while ( j < cards.size ) do
    cards[j] = !cards[j]
    j += i
  end
end

N.times{ |i| puts i + 1 if cards[i] }