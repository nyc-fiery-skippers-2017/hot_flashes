get '/rounds/:id' do
  @round_id = Round.find_by(id: params[:id])
  redirect '/deck/deck_id' 
end
