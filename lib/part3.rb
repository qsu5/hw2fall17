class Dessert

  def initialize(name, calories)
    # YOUR CODE HERE
    @name = name
    @calories = calories
  end
  
  def name
    @name
  end
  def calories
    @calories
  end
  def name=(new_name)
    @name = new_name
  end
  def calories=(new_calories)
    @calories= new_calories
  end
  
  def healthy?
    # YOUR CODE HERE
    return @calories<200
  end
  
  def delicious?
    # YOUR CODE HERE
    return TRUE
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
    @name = name
    @calories = calories
    @flavor = flavor
    
  end
  
  def flavor
    @flavor
  end
  def flavor=(new_flavor)
    @flavor = new_flavor
  end
  
  def delicious?
    # YOUR CODE HERE
    if @flavor == "black licorice" 
      return FALSE
    else
      return TRUE
    end
  end
  
end
