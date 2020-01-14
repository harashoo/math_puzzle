ans = 0
n = 11

loop do
  if n.to_s == n.to_s.reverse &&n.to_s(2) == n.to_s(2).reverse && n.to_s(8) == n.to_s(8).reverse
    ans = n
    break
  end

  n += 2
end

puts ans