require_relative './options/author'
require_relative './options/label'
require_relative './objects/book'
require_relative './objects/game'
require_relative './store_data'
require_relative './inputs'

class App
  attr_accessor :books, :games, :labels, :authors

  def initialize
    @books = []
    @games = []
    @labels = []
    @authors = []
  end

  def menu
    puts
    puts 'Welcome to the Catalog of Things'
    puts
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all games'
    puts '3 - List all labels'
    puts '4 - List all authors'
    puts '5 - Add a book'
    puts '6 - Add a game'
    puts '7 - Exit'
    gets.chomp
  end

  def run
    load_books
    load_games
    load_labels
    load_authors
  end

  def options
    choose = menu
    case choose
    when '1'
      list_all_books
    when '2'
      list_all_games
    when '3'
      list_all_labels
    when '4'
      list_all_authors
    when '5'
      add_book
    when '6'
      add_game
    when '7'
      puts
      puts 'See you!'
      puts
      save_books
      save_games
      exit
    end
  end
end
