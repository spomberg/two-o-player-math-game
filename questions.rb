class Question
    attr_reader :sum, :ask_question

    def initialize
        @first_num = rand(1..20)
        @second_num = rand(1..20)
        @sum = @first_num + @second_num
        @ask_question = "What does #{@first_num} plus #{@second_num} equal?"
    end
end