class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  rules = {"PR" => -1,
    "PS" => 1,
    "RP" => 1,
    "RS" => -1,
    "SP" => -1,
    "SR" => 1,
    "PP" => -1}
  game.sort { |a,b| rules[a[1]+b[1]] }[0]
end
