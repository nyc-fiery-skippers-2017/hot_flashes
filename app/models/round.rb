class Round < ApplicationRecord
  # Remember to create a migration!
  belongs_to :deck
  belongs_to :player, class_name: "User"
  has_many :guesses 
end
