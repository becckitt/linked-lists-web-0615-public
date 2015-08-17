class Element
  attr_accessor :number, :prev_instance

  def initialize(number, prev_instance)
    @number = number
    @prev_instance = prev_instance
  end

  def datum
    #The root number
    @number
  end

  def next
    #contains a reference to the last instance.
    #Ex: #<Element:0x007ff12c320300 @number=2, @prev_instance=#<Element:0x007ff12c2b32c8 @number=1, @prev_instance=nil>>
    # can call @prev_instance.prev_instance & .datum
    @prev_instance
  end

  def self.to_a(instance)
    #instance = #<Element:0x007f91fd024518 @number=1, @prev_instance=nil>
    # linked_layers = []
    # if instance == nil
    #   []
    # else
    #   linked_layers << instance.datum
    #   if instance.prev_instance != nil
    #     linked_layers << instance.prev_instance.datum
    #     if instance.prev_instance.next != nil
    #       linked_layers << instance.prev_instance.prev_instance.datum
    #     else
    #     end
    #   else
    #   end
    # end
    # linked_layers
    linked_layers = []
    if instance == nil
    else
      while instance.prev_instance != nil
        linked_layers << instance.prev_instance.datum
        new_thing = instance.prev_instance
      end
    end

  end

  def self.from_a(array)
    #Given an array, turn that ish into a number. 
    
  end
end
