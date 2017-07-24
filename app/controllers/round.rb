get '/rounds/:id' do
  @round_id = Round.find_by(id: params[:id])
  erb :'round/show'
end

post '/decks/:deck_id/rounds' do
  @deck = Deck.find_by(id: params[:deck_id])
  @player = User.find_by(id: session[:user_id])
  @round = Round.new(deck: @deck, player: @player)
  @cards = @deck.cards
  if @round.save
    redirect "rounds/#{@round.id}/cards/#{@cards.sample.id}"
  end

end
