get '/suggestions' do
  @suggestions = Suggestion.all
  erb :index
end

get '/suggestions/new' do
  erb :new
end

get '/suggestions/:id' do
  @suggestion = Suggestion.find(params[:id])
  erb :show
end

post '/suggestions' do
  @suggestion = Suggestion.new(name: params[:name], description: params[:description])
  
  if @suggestion.save
    redirect '/suggestions'
  else
    "Fail!"
  end
end
