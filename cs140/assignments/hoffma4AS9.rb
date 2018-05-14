# Name: Adam Hoffman , CS 140, Module 12 Assignment (Version 1)
# Description:
# Input:
# Output:

# Fraction: class that represents a rational number
# public methods: +(rhs), print
# instance variables: @numerator, @denominator
class Fraction
    attr_accessor :numerator, :denominator, :size

    # constructor: initialize with a numerator and denominator
    # parameters: a numerator and denominator
    # return value: n/a
    def initialize(n, d)
        @numerator = n
        @denominator = d

  
