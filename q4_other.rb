def cutbar(m, n)
  count = 0
  current = 1

  while n > current
    current += current > m ? m : current
    count += 1
  end
  count
end

puts cutbar(3, 20)
puts cutbar(5, 100)