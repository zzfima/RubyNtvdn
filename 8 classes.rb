class Animal
  #ctor
  def initialize(w)
    @weight = w
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

a1 = Animal.new(11)
puts a1.get_weight

puts Animal.class_name
