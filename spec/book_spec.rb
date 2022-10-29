require_relative '../objects/book'

describe Book do
  context 'When testing the book class' do
    it 'should return title when we call the title method' do
      test_book = Book.new('Harry Potter', 'JK', 'Rowling', 'Tensen', 'black', 'good', '05/07/2022')
      title = test_book.title
      expect(title).to eq 'Harry Potter'
    end

    it 'should return author first name when we call the author_first_name method' do
      test_book = Book.new('Harry Potter', 'JK', 'Rowling', 'Tensen', 'black', 'good', '05/07/2022')
      first_name = test_book.author_first_name
      expect(first_name).to eq 'JK'
    end

    it 'should return author last name when we call the author_last_name method' do
      test_book = Book.new('Harry Potter', 'JK', 'Rowling', 'Tensen', 'black', 'good', '05/07/2022')
      last_name = test_book.author_last_name
      expect(last_name).to eq 'Rowling'
    end

    it 'should return publisher when we call the publisher method' do
      test_book = Book.new('Harry Potter', 'JK', 'Rowling', 'Tensen', 'black', 'good', '05/07/2022')
      publisher = test_book.publisher
      expect(publisher).to eq 'Tensen'
    end

    it 'should return color when we call the color method' do
      test_book = Book.new('Harry Potter', 'JK', 'Rowling', 'Tensen', 'black', 'good', '05/07/2022')
      color = test_book.color
      expect(color).to eq 'black'
    end

    it 'should return cover_state when we call the cover_state method' do
      test_book = Book.new('Harry Potter', 'JK', 'Rowling', 'Tensen', 'black', 'good', '05/07/2022')
      cover_state = test_book.cover_state
      expect(cover_state).to eq 'good'
    end

    it 'should return publish_date when we call the publish_datepublisher method' do
      test_book = Book.new('Harry Potter', 'JK', 'Rowling', 'Tensen', 'black', 'good', '05/07/2022')
      publish_date = test_book.publish_date
      expect(publish_date).to eq '05/07/2022'
    end
  end
end
