module Shapes
  class Base
    attr_accessor :area
  end

  class Circle < Base
      attr_accessor :radius

      def initialize(r)
          @radius = r

          #calculate area = pi r squared
          @area = Math::PI * r ** 2
      end
  end

  class Triangle < Base
        attr_accessor :a, :b, :c

        def initialize(a,b,c)
            @a = a
            @b = b
            @c = c

            #calculate area using herons formula
            s = (a+b+c)/2.0
            @area = Math.sqrt(s*(s-a)*(s-b)*(s-c))
        end
  end

  class Rectangle < Base
      attr_accessor :length, :width

      def initialize(l, w)
        #assign length and width
        @length = l
        @width = w
        #calculate area
        @area = l * w
      end
  end

  class Square < Rectangle

      def initialize(s)
            super(s, s)
      end

  end
end

c = Shapes::Circle.new(10)
puts c.area
