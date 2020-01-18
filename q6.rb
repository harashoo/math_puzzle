c = 0
a = []
ans = []

(1..10000).each {|i| a << i if i.even? }

i = 0
a.each do |n|
  i = n
  loop do
    if i.odd? || c == 0
      i = i * 3 + 1
    else
      i = i / 2
    end
    c += 1
    break if i == 1
    if i == n
      ans << i 
      break
    end
  end
  c = 0
end

puts ans