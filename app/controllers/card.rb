get '/rounds/:rounds_id/cards/:id' do
  require_user
  @round = Round.find_by(id: params[:rounds_id])
  @deck = Deck.find_by(id: @round.deck_id)
  @card = Card.find_by(id: params[:id])
  if @round.cards.count == @round.correct_cards.count
    redirect "/rounds/#{@round.id}"
  else
    erb :'/cards/show'
  end
end

put '/cards/:id/edit' do
end
