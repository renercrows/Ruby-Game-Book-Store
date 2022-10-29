require_relative './app'
require_relative './store_data'

def main
  app = App.new
  app.books = load_books
  app.options
end

main
