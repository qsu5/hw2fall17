class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    a = %Q(
def initialize()
  @#{attr_name}_history =[nil]
  @#{attr_name}=nil
end
      
def #{attr_name}=(new_attr)
  @#{attr_name} = new_attr

  @#{attr_name}_history.push(new_attr)
  puts
end)

    class_eval(a)
  end
end

