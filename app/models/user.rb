class User < ApplicationRecord
  # Remember to create a migration!
  has_many :decks, foreign_key: :creator_id
  has_many :rounds, foreign_key: :player_id
  has_many :guesses, through: :rounds
  has_many :cards, through: :decks

  validates :name, :email, presence: true
  validates :password, length: { minimum: 6 }
  validates :email, uniqueness: true
  has_secure_password
end
