class LinkedListItem
  include Comparable
  attr_reader :next_list_item
  attr_reader :payload

  def initialize(payload)
    @payload = payload
  end

  def next_list_item= (linked_list_item)
    if linked_list_item == self
      raise(ArgumentError, "can't make self next list item")
  	end
  	@next_list_item = linked_list_item
  end

  def last?
    next_list_item.nil?
  end

  def === other_item
    self.object_id == other_item.object_id
  end

  def <=> other
    # Comparators return -1, 0, or 1 to indicate > , ==, or <
    # Precedence: integers, then strings, then symbols (each sorted
    # individually)
    if self.payload.class == other.payload.class
      # I implemented this basic comparison for you.
      return self.payload <=> other.payload
    end
    # You will have to implement the logic for what to do to compare types that aren't equal.
    0
    if self.payload.class == Symbol
    return 1
    end
    if self.payload.class == Fixnum
    return -1
    end
    if self.payload.class == String and other.payload.class == Symbol
    return -1
    end
    if self.payload.class == String and other.payload.class == Fixnum
    return 1
    end

  end


end #class end
