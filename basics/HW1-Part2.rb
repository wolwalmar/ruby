class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  rules = {
    "PR" => -1,
    "PS" => 1,
    "RP" => 1,
    "RS" => -1,
    "SP" => -1,
    "SR" => 1,
    "PP" => -1,
    "SS" => -1,
    "RR" => -1 }

  raise NoSuchStrategyError unless rules.has_key?(stratPair(game[0],game[1]))
  game.sort { |a,b| rules[stratPair(a,b)] }[0]
end

def stratPair(a,b) a[1]+b[1] end

def rps_tournament_winner(tournament)
  puts tournament.to_s
  if tournament.flatten.size == 4
    rps_game_winner(tournament)
  else
    rps_tournament_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
  end
end
