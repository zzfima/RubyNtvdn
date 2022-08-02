class Animal
  def get_weight
    55
  end

  def Animal.class_name
    "Animal"
  end
end

a1 = Animal.new
puts a1.get_weight

puts Animal.class_name
