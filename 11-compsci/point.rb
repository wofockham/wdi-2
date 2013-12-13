module Point

  class TwoD
    attr_accessor :x, :y

    @@count = 0

    def initialize(x=nil, y=nil)
      @x, @y = x, y
      @@count += 1
    end

    def to_s
      "(#{@x},#{@y}) of #{@@count} points"
    end

    def self.count # Class method to return the class variable count.
      @@count
    end

    def +(other)
      TwoD.new( @x + other.x, @y + other.y )
    end

    def -(other)
      TwoD.new( @x - other.x, @y - other.y )
    end

    def ==(other)
      if other.is_a? TwoD
        @x == other.x && @y == other.y
      else
        false
      end
    end
  end

  class ThreeD < TwoD
    attr_accessor :z

    def to_s
      "(#{@x},#{@y},#{@z}) of #{@@count} points"
    end
  end
end

# p = TwoDPoint.new()
# p.is_a? TwoDPoint
# p.kind_of? TwoDPoint

#p = TwoDPoint.new(1, 2)
#p.x = 10
#p.y = 1000


#p2 = TwoDPoint.new(3, 4)
