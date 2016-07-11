class TodoList
  attr_reader :list
  attr_accessor 

  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def get_item(i)
    @list[i]
  end

  def add_item(new_item)
    @list << new_item
  end

  def delete_item(d_item)
    @list.delete(d_item)
  end

  
end