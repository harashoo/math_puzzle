@cnt = 0
def change(target, coins, usable)
  puts coins
  puts "--------------"
  coin = coins.shift
  puts coin
  if coins.size == 0
    puts "coins.size == 0"
    puts target / coin
    @cnt += 1 if target / coin <= usable
    puts @cnt
  else
    puts "else"
    (0..target/coin).each {|i|
      change(target - coin * i, coins.clone, usable - i)
    }
  end
end
change(1000, [500, 100, 50, 10], 15)
puts @cnt