require_relative '../options/label'

describe Label do
  context 'When testing the label class' do
    it 'should return title when we call the title method' do
      test_label = Label.new('54', 'Harry Potter', 'black')
      title = test_label.title
      expect(title).to eq 'Harry Potter'
    end

    it 'should return color when we call the color method' do
      test_label = Label.new('54', 'Harry Potter', 'black')
      color = test_label.color
      expect(color).to eq 'black'
    end
  end
end
