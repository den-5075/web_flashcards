enable :sessions

# byebug
# helpers do
#   def current_user
#     if session[:user_id]
#       User.find session[:user_id]
#     else
#       nil
#     end
#   end

#   def logged_in?
#     if current_user
#       true
#     else
#       false
#     end
#   end
# end

# before do
#   pass if ["/", "/users/sign_up", "/users/login"].include?request.path
#   redirect '/' unless logged_in?
# end


get '/' do
  # Look in app/views/index.erb
  erb :index
end

get "/decks" do
  erb :decks
end

post '/users/sign_up' do
  @user = User.create(params[:user])
  # @user = User.create(username: params[:username],
   # email: params[:email], password: params[:password])
  session[:user_id] = @user.id
  redirect to '/decks'
end

post '/users/login' do
  @user = User.authenticate(params[:user][:email], params[:user][:password])
  if @user
    session[:user_id] = @user.id
    redirect to '/decks'
  else
    redirect to '/'
  end
end

delete '/logout' do
  session.clear
  redirect to '/'
end


