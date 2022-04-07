class GamesController < ApplicationController
  def home

  end

  def new
    alphabet = ("a".."z").to_a
    @letters = []
    10.times { @letters << alphabet.sample }
  end

  def score
    raise
  end
end
