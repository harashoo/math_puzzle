count = 0
N = 15
input = 1000

(0..N).each do |i|
  (0..N).each do |j|
    (0..N).each do |k|
      (0..N).each do |m|
        if N >= i + j + k + m
          if input == 500 * i + 100 * j + 50 * k + 10 * m
            count += 1
          end
        end
      end
    end
  end
end

puts count
