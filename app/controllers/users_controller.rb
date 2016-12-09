get '/login' do
  erb :login
end


post '/login' do
  # params = {username: 'johndoe', password: 'dog'}
  @user = User.find_by(username: params[:username])
  if @user.password == params[:password]
    'You have successfully logged in'
  else
    'You have failed!'
  end
end