class Animal
  # height as get
  # weight as set
  attr_reader :height
  attr_writer :weight

  #ctor
  def initialize(w, h)
    @weight = w
    @height = h
  end

  #object method
  def get_weight
    @weight
  end

  #class method
  def Animal.class_name
    "Animal"
  end
end

a1 = Animal.new(11, 33)
puts a1.get_weight
puts a1.height
a1.weight = 44
puts a1.get_weight

puts Animal.class_name
