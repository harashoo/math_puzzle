op = ['','+','-','*','/']

ans = []

for num in 1000..9999 do
  a = num.to_s.split('')

  op.each do |i|
    op.each do |j|
      op.each do |k|
        text = a[0] + i + a[1] + j + a[2] + k + a[3]
        
        next if text.length <= 4 || text =~ /\/0/

        loop do
          if text.match(/0[1-9]/)
            text = text.gsub(/0([1-9])/, '\1')
          else
            break
          end
        end

        ans = num if num.to_s == (eval(text)).to_s.reverse
      end
    end
  end
end

puts ans