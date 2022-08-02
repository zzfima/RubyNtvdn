#pass array
def do_collection(method, *strings)
  res = []
  strings.each { |s| res << s.send(method) }
  puts res
end

my_str = "Hello World"
do_collection(:upcase, my_str)
do_collection(:downcase, my_str)

#pass hashtable
def do_hash(method, **h)
  res = []
  h.values.each { |s| res << s.send(method) }
  return res
end

hh = { iam: "Vova", father: "Bobo" }
puts do_hash(method = :upcase, **h = hh)
puts do_hash(:downcase, iam: "Vova", father: "Bobo")

#array
def multiSum(a, b, *c)
  p a
  p b
  sum = c.inject { |s, n| s + n }
  p a + b + sum
end

multiSum(*[1, 2, 3, 4, 5])

#singletone method
class Foo
  def PrintMe(s)
    puts s
  end
end

f = Foo.new
f.PrintMe('hlo')

def f.PrintMeTwice(s)
  puts s
  puts s
end

f.PrintMeTwice('mlo')

f1 = Foo.new
# f1.PrintMeTwice('mlo') undefined method `PrintMeTwice'