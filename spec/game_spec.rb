require_relative '../objects/game'

describe Game do
  context 'When testing the game class' do
    it 'should return name when we call the name method' do
      test_game = Game.new('Sonic 006', 'Sega', 'yes', '15/07/2022', '05/07/2022')
      name = test_game.name
      expect(name).to eq 'Sonic 006'
    end

    it 'should return developer when we call the developer method' do
      test_game = Game.new('Sonic 006', 'Sega', 'yes', '15/07/2022', '05/07/2022')
      developer = test_game.developer
      expect(developer).to eq 'Sega'
    end

    it 'should return multiplayer when we call the multiplayer method' do
      test_game = Game.new('Sonic 006', 'Sega', 'yes', '15/07/2022', '05/07/2022')
      multiplayer = test_game.multiplayer
      expect(multiplayer).to eq 'yes'
    end

    it 'should return last_played_at when we call the last_played_at method' do
      test_game = Game.new('Sonic 006', 'Sega', 'yes', '15/07/2022', '05/07/2022')
      last_played_at = test_game.last_played_at
      expect(last_played_at).to eq '15/07/2022'
    end

    it 'should return cover_state when we call the cover_state method' do
      test_game = Game.new('Sonic 006', 'Sega', 'yes', '15/07/2022', '05/07/2022')
      publish_date = test_game.publish_date
      expect(publish_date).to eq '05/07/2022'
    end
  end
end
