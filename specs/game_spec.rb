require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class TestGame < Minitest::Test

  def test_compare_rock_wins()
    game = Game.new("rock", "scissors")
    result = game.compare()
    assert_equal("player 1 wins", result)
  end
  #showing as draw

  # def test_compare_paper_wins()
  #   game = Game.new('')
  #   result = game.compare()
  #   assert_equal("", result)
  # end
  #
  # def test_compare_scissors_wins()
  #   game = Game.new('')
  #   result = game.compare()
  #   assert_equal("", result)
  # end

  def test_compare_draw
    game = Game.new("paper", "paper")
    result = game.compare()
    assert_equal("It's a draw!", result)
  end

  # def test_compare_rock_wins_paper()
  #   game = Game.new('paper', 'rock')
  #   result = game.compare()
  #   assert_equal("player 2 wins", result)
  # end
  #
  # def test_compare_scissors_wins_paper()
  #   game = Game.new('scissors', 'paper')
  #   result = game.compare()
  #   assert_equal("player 1 wins", result)
  # end
  #
  # def test_compare_scissors_wins_rock()
  #   game = Game.new('scissors', 'paper')
  #   result = game.compare()
  #   assert_equal("player 1 wins", result)
  # end
  #
  # def test_compare_paper_wins()
  #   game = Game.new('paper', 'paper')
  #   result = game.compare()
  #   assert_equal("It's a draw!", result)
  # end

end
