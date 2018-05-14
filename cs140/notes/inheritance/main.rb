require "./number"
require "./fraction"

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
