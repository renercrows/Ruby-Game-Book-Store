require_relative '../item'

class Book < Item
  attr_accessor :title, :author_first_name, :author_last_name, :publisher, :color, :cover_state, :publish_date

  def initialize(title, author_first_name, author_last_name, publisher, color, cover_state, publish_date)
    super()
    @publisher = publisher
    @cover_state = cover_state
    @archived = false
    @title = title
    @author_first_name = author_first_name
    @author_last_name = author_last_name
    @id = Random.rand(1...1000)
    @publish_date = publish_date
    @color = color
  end

  private

  def can_be_archived?
    @cover_state == 'bad' || super
  end
end
