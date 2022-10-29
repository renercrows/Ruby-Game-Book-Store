require 'securerandom'

class Item
  attr_accessor :id, :published_date, :label, :author, :archived

  def initiliaze(_publish_date)
    @id = Random.rand(1...1000)
    @published_date = published_date
    @archived = false
  end

  def add_label
    @label = label
  end

  def add_author
    @author = author
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  private

  def can_be_archived?()
    Time.new.year - @published_date.year > 10
  end
end
