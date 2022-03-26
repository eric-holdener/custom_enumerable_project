module Enumerable
  # Your code goes here
  def my_all?
    arr = []
    self.my_each do |value|
      tf = yield value
      if tf == true
        arr.push(tf)
      end
    end
    if arr.length == length
      true
    else
      false
    end
  end

  def my_any?
  end

  def my_each
    return to_enum(:my_each) unless block_given?
    i = 0
    while i < length
      yield self[i]
      i += 1
    end
    self
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
end
