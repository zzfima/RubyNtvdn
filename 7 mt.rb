def do_collection(method, *strings)
  res = []
  strings.each { |s| res << s.send(method) }
  puts res
end

my_str = "Hello World"
do_collection(:upcase, my_str)
do_collection(:downcase, my_str)
