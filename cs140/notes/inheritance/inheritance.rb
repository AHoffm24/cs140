#Inheritance notes and examples

#--------------------------------------------------#
#Inheritance the proces in which objects of one particular class aquire the properties of another class

#class 1 -> to class 2, class 3, class 4, in addition to what ever goes on inside those classes

#Class 1 would be the parent class, and class 2, 3, 4 are child classes

#You are unable to inherit from more than one class

#Syntax

#class ChildClass   <  ParentClass
#--------------------------------------------------#

class Number
  attr_accessor :value
  def print
    puts @value
  end
end
#fraction is the child class of number, and is allowed to use public print when using a fraction type variable
class Fraction < Number
  attr_accessor :num, :denom

  def initialize(n,d)
    @num = n
    @denom = d
    #@value = "#{@num}/#{@denom}"   Uses update value mathod instead
    update_value
  end

  def assign(n,d)
    @num = n
    @denom = d
    #@value = "#{@num}/#{@denom}"   Uses update value mathod instead
    #updates in 1 place instead of many places
    update_value
  end
#--------------------------------------------------#
# showing how polymorphism allows to have 2 print classes,
#and the compiler will pick this print instead
#of number class to allow different printing depending
#on which class your variable
#is a type of
#--------------------------------------------------#

  def print
      puts "#{@num} /  #{@denom}"
  end
  private
  def update_value
    @value = "#{@num}/#{@denom}"
  end
end

f = Fraction.new(1,2)
f.print
f.assign(2,3)
f.print
#--------------------------------------------------#
#polymorphism example
n = Number.new
n.value = 3
n.print
#--------------------------------------------------#

#polymorphism
# The ability to modify the behavior of a parent class method inside a child class
#What if one of the attribute in the parent class, and you wanted to modify the behavior ?
#

#

#--------------------------------------------------#





#--------------------------------------------------#
#--------------------------------------------------#
