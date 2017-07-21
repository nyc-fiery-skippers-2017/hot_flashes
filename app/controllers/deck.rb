get '/decks' do
 erb :'/decks/index'
end

get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  erb :'/decks/show'
end

put '/decks/:id/edit' do

end
