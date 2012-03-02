require 'test/unit'

require './rockpaperscissors'

class TestRockPaperScissors < Test::Unit::TestCase
  def test_raise_WrongNumberOfPlayersError_for_empty_list
    assert_raise(WrongNumberOfPlayersError) {
      rps_game_winner([])}
  end

  def test_P_wins_over_R
    assert_equal ['a','P'],rps_game_winner([['a','P'],['b','R']])
  end
  def test_R_looses_against_P
    assert_equal ['b','P'],rps_game_winner([['a','R'],['b','P']])
  end
  def test_R_wins_over_S
    assert_equal ['a','R'],rps_game_winner([['a','R'],['b','S']])
  end
  def test_S_looses_against_R
    assert_equal ['b','R'],rps_game_winner([['a','S'],['b','R']])
  end

end
