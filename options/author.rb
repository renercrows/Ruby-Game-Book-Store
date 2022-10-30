class Author
  attr_accessor :id, :author_first_name, :author_last_name, :items

  def initialize(_id, author_first_name, author_last_name)
    @id = Random.rand(1...1000)
    @author_first_name = author_first_name
    @author_last_name = author_last_name
    @items = []
  end

  def add_item(_method)
    @items << item
    item.add_author(self)
  end
end
