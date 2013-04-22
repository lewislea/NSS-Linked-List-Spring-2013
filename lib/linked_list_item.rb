class LinkedListItem
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

    # if next_list_item.nil?
   #    true
   #  else
   #    false
   #  end

  end
end
