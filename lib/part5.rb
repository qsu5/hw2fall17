class CartesianProduct
  include Enumerable

  def initialize(a,b)
    #YOUR CODE HERE
    @a = a
    @b = b
  end

  def each
    #YOUR CODE HERE
    if defined? @a and defined? @b
      for i in 0..@a.length-1
        for j in 0..@b.length-1
          yield([@a[i],@b[j]])
        end
      end
    end
  
  end

end
