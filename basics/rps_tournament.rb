require './rockpaperscissors'

def rps_tournament_winner(tournament)
  puts tournament.to_s
  if tournament.flatten.size == 4
    rps_game_winner(tournament)
  else
    rps_tournament_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
  end
end
