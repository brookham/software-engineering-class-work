class Poker
  def initialize(players)
    @players = players
    @hands = []
    players.length().times { |x| @hands.append(nil) }
  end

  def play
    puts "Players in the poker game:"
    @players.length.times { |i| puts "#{get_player_name(i)}: #{get_player_hand(i)}" }
    # [pretend there's code here]
  end

  def results
    "[pretend these are poker results]"
  end

  def get_player_name(i)
    @players[i]
  end

  def get_player_hand(i)
    @hands[i]
  end
end

class Chess
  def initialize(players)
    @players = players
  end

  def play
    puts "Players in the chess game:"
    @players.length.times { |x| puts "#{get_player_name(x)}: #{@players[x][1]}" }
    # [pretend there's code here]
  end

  def results
    "[pretend these are chess results]"
  end

  def get_player_name(i)
    @players[i][0]
  end
end

class GoPlayer
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

class Go
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(GoPlayer.new(x, y)) }
  end

  def play
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def results
    "[pretend these are go results]"
  end
end

class PlayGames
  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play
    case @game_number
    when 1
      game = Poker.new(@player_list)
    when 2
      game = Chess.new(@player_list)
    when 3
      game = Go.new(@player_list)
    end

    game.play
    puts game.results
  end
end

pg = PlayGames.new(1, ["alice", "bob", "chris", "dave"])
pg.play

puts

pg = PlayGames.new(2, [["alice", "white"], ["bob", "black"]])
pg.play

puts

pg = PlayGames.new(3, [["alice", "white"], ["bob", "black"]])
pg.play

# -changes Made-
# change play() to be more universal
# formatiing stuff
# normalized infputs
#changed som class names