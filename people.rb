class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi my name is #{@name}!"
  end

end

class Student < Person

  # def initialize(name)
  #   super(name)
  # end

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  # def initialize(name)
  #   super(name)
  # end

  def teach
    puts "Everything in Ruby is an Object."
  end

end

i = Instructor.new("Chris")
puts i.greeting
puts i.teach
puts i.learn

s = Student.new("Christina")
puts s.greeting
puts s.learng
puts s.teach

#Calling the learn method on an instructor instance or calling the teach method on a student instance does not work because Student class is the parent class of the learn method, meaning that method will only manipulate the instance variables that belong to the Student class. The same goes for the Instructor class being the parent of the teach method.
