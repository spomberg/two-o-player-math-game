class Turn
  attr_reader :current_player, :current_question

    def initialize (player, question)
       @current_player = player
       @current_question = question
    end

    def lose_life
      @current_player.current_lives -= 1
    end
end