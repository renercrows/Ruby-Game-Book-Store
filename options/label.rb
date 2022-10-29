class Label
  attr_accessor :id, :title, :color, :items

  def initialize(_id, title, color)
    @id = Random.rand(1...1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(_method)
    @items << item
    item.add_label(self)
  end
end
