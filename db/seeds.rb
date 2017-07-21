require 'faker'

User.delete_all
Deck.delete_all
Card.delete_all
Round.delete_all
Guess.delete_all

30.times do
  User.create(name: Faker::GameOfThrones.character, email: Faker::Internet.email, password: "password")
end

decks = []
10.times do
  decks << Deck.create(name: Faker::Team.name, category: Faker::Team.sport, creator: User.all.sample)
end

rounds = []
50.times do
  rounds << Round.create(deck: decks.sample, player: users.sample)
end

cards = []
200.times do
  cards << Card.create(question: Faker::Hipster.sentence , answer: Faker::Hipster.word, deck: decks.sample)
end


results = [true, false]
50.times do
  Guess.create(round: rounds.sample, card: cards.sample, result: results.sample)
end
