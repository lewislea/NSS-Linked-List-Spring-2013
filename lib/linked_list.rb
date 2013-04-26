require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
    args.each {|args| add_item(args)}
  end

  def add_item(payload)
  new_item = LinkedListItem.new(payload)
  if @first_item.nil?
    @first_item = new_item
  else
    final_item = @first_item
    until final_item.last?
      final_item = final_item.next_list_item
    end
    final_item.next_list_item = new_item
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
    item = @first_item
    until item.last?
      item = item.next_list_item
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

  def indexOf(payload)
    item = @first_item
    return nil if item.nil?
    i = 0
    until payload == item.payload
      i += 1
      item = item.next_list_item
      return nil if item.nil?
    end
    i
    # use break to eliminate duplicate nil lines?

  end

  def sorted?

    return true if @first_item.nil?

    item = @first_item
    return true if item.next_list_item.nil?

    until item.last?
      if item < item.next_list_item
        item = item.next_list_item
      else
        return false
      end

  end

  def sort
    if @first_item.nil?
      "| |"
  end


  # until sorted?

  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

end
