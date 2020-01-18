count = 0
N = 15

(0..N).each do |i|
  (0..N - i).each do |j|
    (0..N - i - j).each do |k|
      m = N - i - j - k
      count += 1 if 1000 == 500 * i + 100 * j + 50 * k + 10 * m
    end
  end
end

puts count