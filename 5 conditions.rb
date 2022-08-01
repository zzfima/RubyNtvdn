x = gets.to_i

if x > 10
  puts 'more than 10'
else
  puts 'less than 10'
end


if x == 1
  puts 'is 1'
elsif x == 2
  puts 'is 2'
elsif x == 3
  puts 'is 3'
else
  puts 'is not 1 2 or 3'
end


x = 4 if x.zero?
puts x


unless x < 10
  puts 'x more than 10'
else
  puts 'x less than 10'
end


case x
when 1
  puts 'x is 1'
when 2
  puts 'x is 2'
else
  puts 'is more than 2'
end


y = case x
    when 1 then 1
    when 2
      2
    else
      10000
    end
puts y


y > 100 ? (puts 'y is big') : (puts 'y is small')

