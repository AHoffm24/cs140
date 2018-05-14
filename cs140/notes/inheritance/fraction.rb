require "./number"
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

  def print
      puts "#{@num}"
      puts "-"
      puts "#{@denom}"
      puts ""
  end
  private
  def update_value
    @value = "#{@num}/#{@denom}"
  end
end
