class Game
    attr_writer :current_player
    attr_reader :player_one, :player_two
    attr_accessor :current_question

    def initialize player_one , player_two, question
        @player_one = player_one
        @player_two = player_two
        @current_player = @player_one
        @current_question = question
    end

    def next_player
        if @current_player.name == @player_one.name
            @current_player = @player_two
        else
            @current_player = @player_one
        end
    end

    def ask_question
        puts "#{@current_player.name}: #{current_question.ask_question}"
        player_answer = gets.chomp.to_i

        if player_answer == @current_question.sum
            puts "#{@current_player.name}: YES! You are correct."
            puts "P1: #{@player_one.current_lives}/3 vs P2: #{@player_two.current_lives}/3" 
        else
            lose_life
            puts "#{@current_player.name}: Seriously? No!"
            puts "P1: #{@player_one.current_lives}/3 vs P2: #{@player_two.current_lives}/3" 
        end

    end

    def game_over
        other_player = {}

        if @current_player == @player_one
            other_player = @player_two
        else
            other_player = @player_one
        end

        if @current_player.current_lives == 0
            "#{other_player.name} wins with a score of #{other_player.current_lives}/3"
        end
    end

    def lose_life
        if @current_player.name == @player_one.name
          @player_one.current_lives -= 1
        else 
          @player_two.current_lives -= 1
        end
    end
end