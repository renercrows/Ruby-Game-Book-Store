require 'json'
require_relative './objects/book'
require_relative './objects/game'
require_relative './options/label'
require_relative './options/author'

def save_books
  book = books.map { |book| { title: book.title, author_first_name: book.author_first_name, author_last_name: book.author_last_name, publisher: book.publisher, color: book.color, cover_state: book.cover_state, publish_date: book.publish_date } }
  json = JSON.generate(book)
  File.write('data/book.json', json)
end

def save_games
  game = games.map { |game| { name: game.name, developer: game.developer, multiplayer: game.multiplayer, last_played_at: game.last_played_at, publish_date: game.publish_date } }
  json = JSON.generate(game)
  File.write('data/game.json', json)
end

def load_books
  book = File.open('data/book.json')
  book.read
  book = JSON.parse(book)
  book.map { |book| books.push(Book.new(book['title'], book['author_first_name'], book['author_last_name'], book['publisher'], book['color'], book['cover_state'], book['publish_date'])) }
  books
end
