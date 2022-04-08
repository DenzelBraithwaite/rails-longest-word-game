class GamesController < ApplicationController
  def home

  end

  def new
    @alphabet = ("a".."z").to_a
    @letters = []
    10.times { @letters << @alphabet.sample }
    # raise
  end

  def score
    @guess = params[:"guess-word"]
    @letters = params[:letters]
    @text = "stop cheating?" unless valid_letters?
    # raise
  end

  # private

  def valid_letters?
    @guess.chars.all? do |letter|
      @letters.include?(letter)
    end
  end
end
