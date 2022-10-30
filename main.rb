require_relative './app'
require_relative './store_data'

def main
  app = App.new
  app.run
  app.options
  options(app, exit)
end

main
