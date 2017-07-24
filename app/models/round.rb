class Round < ApplicationRecord
  # Remember to create a migration!
  belongs_to :deck
  belongs_to :player, class_name: "User"
  has_many :guesses, class_name: "Guess"
  has_many :cards, through: :deck
  has_many :guessed_cards, through: :guesses, source: :card

  def correct_guesses
    self.guesses.where(result: true)
  end

  def correct_cards
    self.correct_guesses.map { |guess| guess.card }
  end

  def unguessed_card
    (self.cards - self.guessed_cards).sample
  end

  def random_card
    (self.cards - self.correct_cards).sample
  end

  def number_of_correct_first_guesses
    self.cards.select { |card| card.guesses.count == 1 }.count
  end
end
