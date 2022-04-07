Classes
-Player
A participant in the math game with a 3 lives

State: Lives (:current_lives = 3)
Method: Getter/Setter for Lives

-Game
A game where it asks a math question about an addition of two random numbers from 1 to 20. The game will be between 2 players who take turns answering the question. If a player gets a question wrong, they lose a life. If the player loses all their lives, the game is over.

State: 
Method:  game (generates math question, takes input, if player answers wrong call lose_life method),  game_over

-Question
State: :first_number , :second_number , :sum
Method: generate_random_number, generate_question
ø
-Turn
State: current_player , current_question
Method: setter for current_player, lose_life









Class Player

    attr_accessor :current_lives

    def initialize
        :current_lives = 3
    end

end