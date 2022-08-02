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

#blocks methods proc lambda
# proc like block
# lambda like method

s = lambda do |a, b|
  return a + b
end
puts s.call(5, 6)

#proc
pr = Proc.new { |a, b| a + b }
puts pr.call(4, 5)