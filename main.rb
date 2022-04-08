require './games'
require './players'
require './questions'
require './turns'

question = Question.new
player_one = Player.new("Player 1")
player_two = Player.new("Player 2")
game = Game.new(player_one, player_two, question)

while game.player_one.current_lives > 0 && game.player_two.current_lives > 0
    game.ask_question
    if !game.game_over
      game.next_player
      puts "---- NEW TURN ----"
    end
    game.current_question = Question.new
end

game.game_over
puts "---- GAME OVER ----"
puts "Good bye"