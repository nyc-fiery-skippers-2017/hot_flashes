get '/login' do
  erb :'/login/new'
end

post '/login' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'/login/new'
  end
end

delete '/logout' do
  session.delete(:user_id)
  redirect '/login'
end
