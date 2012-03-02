require 'test/unit'

require './rps_tournament'

class TestRPSContest < Test::Unit::TestCase

  def test_2_Participants
    assert_equal ["Dave", "S"],rps_tournament_winner([["Armando", "P"], ["Dave", "S"]])
  end
  def test_4_Participants
    assert_equal ["Richard", "R"],rps_tournament_winner(
                        [
                         [ ["Armando", "P"], ["Dave", "S"] ],
                         [ ["Richard", "R"], ["Michael", "S"] ],
                        ])
  end
  def test_8_Participants
    assert_equal ["Richard", "R"],rps_tournament_winner(
                        [[
                         [ ["Armando", "P"], ["Dave", "S"] ],
                         [ ["Richard", "R"], ["Michael", "S"] ],
                        ],
                        [
                         [ ["Allen", "S"], ["Omer", "P"] ],
                         [ ["David E.", "R"], ["Richard X.", "P"] ]
                        ]])
  end
end
