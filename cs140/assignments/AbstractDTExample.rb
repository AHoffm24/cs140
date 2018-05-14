class Fraction
    def assign(n,d)
      @numerator = n
      @denominator = d
    end
    def print
      puts "the fraction is #{@numerator}/#{@denominator}"
    end
end

f1 = Fraction.new
f1.assign(3, 5)
f1.print

f1.assign(2, 5)
f1.print
