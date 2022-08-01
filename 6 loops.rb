cnt = 2

while cnt > 0
  puts "cnt = #{cnt}"
  cnt -= 1
end

until cnt > 5
  puts "until cnt = #{cnt}"
  cnt += 1
end

begin
  puts "begin end cnt = #{cnt}"
  cnt -= 1
end while cnt > 0

family = { name: 'alex', age: 22, weight: 67 }

for i in family
  puts i
end

for i in family.keys
  puts i
end

family.each { |i|
  puts i
}

i = 5
i.times do
  puts i
end

2.upto(4) { |k| puts k }