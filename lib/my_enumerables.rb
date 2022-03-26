module Enumerable
  # Your code goes here
  def my_all?(&blk)
    if block_given?
      i = 0
      arr = []
      while i < self.length
        tf = blk.call(self[i])
        if tf == true
          arr.push(self[i])
        end
        i += 1
      end
      if arr.length == self.length
        true
      else
        false
      end
    end
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
end
