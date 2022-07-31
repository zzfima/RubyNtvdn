str1 = 'str 1 \n'
str2 = "str 2 \n"
str3 = %q[str 3 \n]
str4 = %Q[str 3 \n]
str5 = <<EOF
shla masha 
po shasse 
i sosala sushku
EOF
puts str1, str2, str3, str4, str5

puts str1 + str2
puts str1 << str2
puts 'ok!?' * 3

d = 'str d'
d.concat('d1')
d.freeze
#d.concat('d2') error: can't modify frozen String
