class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
class WrongTournamentError < StandardError; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # YOUR CODE HERE
  for i in 0..1
    if game[i][1].downcase != 'p'and game[i][1].downcase != 's' and game[i][1].downcase != 'r'
      raise NoSuchStrategyError
    end
  end
  
  if (game[1][1].downcase == 'p' and game[0][1].downcase == 'r') or 
    (game[1][1].downcase == 's' and game[0][1].downcase == 'p') or
    (game[1][1].downcase == 'r' and game[0][1].downcase == 's')
    return game[1]
  else 
    return game[0]
  end
    
end


def get_dimension(a)
  return 0 if a.class != Array
  result = 1
  a.each do |sub_a|
    if sub_a.class == Array
      dim = get_dimension(sub_a)
      result = dim + 1 if dim + 1 > result
    end
  end
  return result
end


def rps_tournament_winner(tournament)
  # YOUR CODE HERE
  raise WrongTournamentError unless tournament.class ==  Array
  
  while get_dimension(tournament) != 2
    tournament.each do |sub_temp|
      print "dimension is " + get_dimension(sub_temp).to_s
      print " "
      print sub_temp
      puts
      tournament.map!{|x| x == sub_temp ? rps_tournament_winner(sub_temp): x}
      
      
    end
  end
    
  
end

#feel free to add your own helper functions as needed
