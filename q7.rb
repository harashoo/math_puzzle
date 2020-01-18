require 'date'

ans = []

d = Date.new(1964, 10, 10)

loop do
  year = d.year.to_s
  month = d.month.to_s
  day = d.day.to_s

  if month.length == 1
    month = "0" + month
  end

  if day.length == 1
    day = "0" + day
  end

  check = (year + month + day).to_i
  if check == check.to_s(2).reverse.to_i(2)
    ans << check
  end

  break if d == Date.new(2020, 7, 24)
  d = d.next_day
end

puts ans