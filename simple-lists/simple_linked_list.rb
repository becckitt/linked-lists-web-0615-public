class Element
  attr_accessor :number, :prev_instance
  STACK = []
  #have a constant that keeps track each new instance.
  #each instance's second argument should return the previous
  #instance's first argument.

  def initialize(number, prev_instance)
    @number = number
    @prev_instance = prev_instance
  end

  def datum
    #The root number
    @number
  end

  def next
    #the number below
    binding.pry
    @prev_instance
    #something.last
  end

  def self.to_a(instance)
    # Given a number, take that number and all previous numbers
    # and put them into an array in descending order.

    
    # if instance == nil
    #   []
    # else
    #   collection = [instance.datum]
    #   until instance.prev_instance == nil
    #     collection << instance.next.prev_instance
    #   else
    #     break
    #   end
    #   collection.compact
    # end
  end

  def self.from_a(array)
    #Given an array, turn that ish into a number. 
  end
end
