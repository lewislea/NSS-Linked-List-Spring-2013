require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
  end

  def add_item(payload_for_new_list_item)
    
    next_item = LinkedListItem.new(payload_for_new_list_item
      )
   if @first_item.nil?
   @first_item = next_item
   else
      final_item = @first_item
      while !final_item.last?
        final_item = final_item.next_list_item
      end
    final_item.next_list_item = next_item    
   end
   

  end

  def get(n)

    item = @first_item

    n.times do 
      raise IndexError, "there are no list items" if item.nil?
      item = item.next_list_item
    end

    item.payload

  end

  def last
    
    return nil if @first_item.nil? 

    i = 0
    item = @first_item
  
    until item.next_list_item == false
      i += 1
      item = i
    end

    item.payload

  end

  def size
    size = 0

    item = @first_item

    until item.nil?
    size += 1
    item = item.next_list_item
    end
    size
  end

  def to_s
   
    item = @first_item
    
    if item.nil?
      linked_list = "| |"
    else
      payload_list = item.payload
      until item.last?
        item = item.next_list_item
        payload_list += ", " + item.payload 
      end
      linked_list = "| #{payload_list} |"    
    end
    
  end

  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

end
