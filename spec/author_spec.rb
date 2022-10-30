require_relative '../options/author'

describe Author do
  context 'When testing the author class' do
    it 'should return first name when we call the first_name method' do
      test_author = Author.new('54', 'Harry', 'Potter')
      first_name = test_author.author_first_name
      expect(first_name).to eq 'Harry'
    end

    it 'should return last name when we call the last_name method' do
      test_author = Author.new('54', 'Harry', 'Potter')
      last_name = test_author.author_last_name
      expect(last_name).to eq 'Potter'
    end
  end
end
