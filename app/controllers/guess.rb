post '/guesses' do
  @round = Round.find_by(id: params[:round])
  @card = Card.find_by(id: params[:card])
  if params[:guess] = @card.answer
    result = true
  else
    result = false
  end
  @guess = Guess.new(result: result, round: @round, card: @card)
  if @guess.save
    if @round.guesses.count <=  @round.cards.count
      redirect "rounds/#{params[:round]}/cards/#{@round.unguessed_card.id}"
    else
      redirect "rounds/#{params[:round]}/cards/#{@round.random_card.id}"
    end
  end
end
