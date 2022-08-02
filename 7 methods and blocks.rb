def sum (a, b)
  puts "#{a} + #{b} = #{a + b}"
end

def mean (*a)
  cnt = 0
  s = 0
  a.each { |i|
    cnt += 1
    s += i
  }
  puts "mean = #{s / cnt}"
end

sum(4, 5)
mean 3, 4, 5, 6, 7, 6, 44