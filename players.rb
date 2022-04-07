class Player
    attr_accessor :current_lives, :name

    def initialize name
        @name = name
        @current_lives = 3
    end
end