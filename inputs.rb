require_relative './objects/book'
require_relative './objects/game'

def list_all_books
  if @books.length.positive?
    @books.each_with_index do |book, index|
      print "#{index}) ID: \"#{book.id}\", Title: \"#{book.title}\", Author_first_name: #{book.author_first_name}, Author_last_name: #{book.author_last_name}, Publisher: #{book.publisher}, Cover_state: #{book.cover_state}, Publish_date: #{book.publish_date}\n\n"
    end
  else
    puts 'No books here!'
  end
  options
end

def list_all_games
  if @games.length.positive?
    @games.each_with_index do |game, index|
      print "#{index}) Name: #{game.name}, Developer: #{game.developer}, Multiplayer: #{game.multiplayer}, Last_played_at: #{game.last_played_at}, Publish_date: #{game.publish_date}\n\n"
    end
  else
    puts 'No games here!'
  end
  options
end

def add_book
  print 'Write title: '
  title = gets.chomp.capitalize
  print 'Write author first name: '
  author_first_name = gets.chomp.capitalize
  print 'Write author last name: '
  author_last_name = gets.chomp.capitalize
  print 'Write publisher: '
  publisher = gets.chomp.capitalize
  print 'Write the color of the book: '
  color = gets.chomp
  print 'Cover_state(good/bad): '
  cover_state = gets.chomp
  print 'Write publish_date(year): '
  publish_date = gets.chomp.to_i
  new_book = Book.new(title, author_first_name, author_last_name, publisher, color, cover_state, publish_date)
  @books.push(new_book)
  @labels.push(new_book)
  @authors.push(new_book)
  puts "\nBook created successfully\n"
  options
end

def add_game
  print 'name: '
  name = gets.chomp.capitalize
  print 'Write the developer: '
  developer = gets.chomp.capitalize
  print 'Does the game has multiplayer(yes/no): '
  multiplayer = gets.chomp
  print 'Write the last_played_at(year): '
  last_played_at = gets.chomp.to_i
  print 'Write the publish_date(year): '
  publish_date = gets.chomp.to_i
  new_game = Game.new(name, developer, multiplayer, last_played_at, publish_date)
  @games.push(new_game)
  puts "\nGame added successfully\n"
  options
end

def list_all_labels
  if @labels.length.positive?
    @labels.each_with_index do |label, index|
      print "#{index + 1}) ID: \"#{label.id}\", Title: \"#{label.title}\", Color: #{label.color}\n\n"
    end
  else
    puts
    puts 'No labels!'
    puts
  end
  options
end

def list_all_authors
  if @authors.length.positive?
    @authors.each_with_index do |author, index|
      print "#{index + 1}) ID: \"#{author.id}\", Author_first_name: #{author.author_first_name}, Author_last_name: #{author.author_last_name}\n\n"
    end
  else
    puts
    puts 'No authors!'
    puts
  end
  options
end
