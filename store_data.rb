require 'json'
require_relative './objects/book'
require_relative './objects/game'
require_relative './options/label'
require_relative './options/author'

def save_books
  booklist = books.map { |book| { title: book.title, author_first_name: book.author_first_name, author_last_name: book.author_last_name, publisher: book.publisher, color: book.color, cover_state: book.cover_state, publish_date: book.publish_date } }
  json = JSON.generate(booklist)
  File.write('data/book.json', json)
end

def save_games
  gamelist = games.map { |game| { name: game.name, developer: game.developer, multiplayer: game.multiplayer, last_played_at: game.last_played_at, publish_date: game.publish_date } }
  json = JSON.generate(gamelist)
  File.write('data/game.json', json)
end

def load_books
  book_data = File.open('data/book.json')
  book_data = book_data.read
  book_data = JSON.parse(book_data)
  book_data.map { |book| books.push(Book.new(book['title'], book['author_first_name'], book['author_last_name'], book['publisher'], book['color'], book['cover_state'], book['publish_date'])) }
  books
end

def load_games
  game_data = File.open('data/game.json')
  game_data = game_data.read
  game_data = JSON.parse(game_data)
  game_data.map { |game| games.push(Game.new(game['name'], game['developer'], game['multiplayer'], game['last_played_at'], game['publish_date'])) }
  games
end

def load_labels
  label_data = File.open('data/book.json')
  label_data = label_data.read
  label_data = JSON.parse(label_data)
  label_data.map { |label| labels.push(Label.new(label['id'], label['title'], label['color'])) }
  labels
end

def load_authors
  author_data = File.open('data/book.json')
  author_data = author_data.read
  author_data = JSON.parse(author_data)
  author_data.map { |author| authors.push(Author.new(author['id'], author['author_first_name'], author['author_last_name'])) }
  authors
end
