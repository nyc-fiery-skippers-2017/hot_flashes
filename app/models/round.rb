class Round < ApplicationRecord
  # Remember to create a migration!
  belongs_to :deck
  belongs_to :player, class_name: "User"
  has_many :guesses, class_name: "Guess"
  has_many :cards, through: :deck
  has_many :guessed_cards, through: :guesses, source: :card

  def correct_guesses
    self.guesses.where(results: true)
  end

  def correct_cards
    self.correct_guesses.map { |guess| guess.card }
  end

  def
    (self.cards - self.correct_cards).shuffle
  end
end
