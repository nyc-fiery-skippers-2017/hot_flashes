get '/rounds/:rounds_id/cards/:id' do
  @round = Round.find_by(id: params[:rounds_id])
  @deck = Deck.find_by(id: @round.deck_id)
  @card = Card.find_by(id: params[:id])
  @unanswered_cards = @round.guesses.where(result: true)
  erb :'cards/show'
end

put '/cards/:id/edit' do
end
