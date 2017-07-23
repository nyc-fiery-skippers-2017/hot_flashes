class Card < ApplicationRecord
  # Remember to create a migration!
  belongs_to :deck
  has_many :guesses
  belongs_to :round
end
