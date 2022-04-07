require './games'
require './players'
require './questions'
require './turns'
require 'pp'

first_question = Question.new
player_one = Player.new("Player 1")
player_two = Player.new("Player 2")

# puts first_question.sum
# puts first_question.ask_question

# first_question = Question.new
# puts first_question.sum
# puts first_question.ask_question

new_turn = Turn.new(player_one, first_question)
new_turn.lose_life
pp player_one

