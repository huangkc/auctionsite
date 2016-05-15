# index
# get '/users' do
  # @users = User.all
  # erb :'users/index'
# end

#new - create new user form
get '/users/new' do
	erb :'users/new'
end

#post - Create new user - submit form
post '/users' do
  if params[:password].length < 6
    flash[:error] = "Password must be at least 6 characters"
    redirect '/users/new'
  end
  @user = User.new(username: params[:username], password: params[:password])
                  
  if @user.save 
    session[:id] = @user.id
    redirect "/users/#{current_user.id}"
  else 
    status 400
    flash[:error] = "Username and password are required."
    erb :'/users/new'
 end 
end

# after login
get '/users/:id' do
  @user = User.find(params[:id])
  @all_items = Item.all.take(40)
  @items = @user.items.take(20)
  @bids = current_user.bids
  find_winning_bids
  erb :'users/show'
end

# edit user info
# get '/users/:id/edit' do
#   @user = User.find(params[:id])
#   erb :'users/edit'
# end

# ###update user attributes
# put '/users/:id' do
#   @user = User.find(params[:id])
#   @user.update(params[:user])
#   redirect "/users/#{@user.id}"
# end

##delete user
# delete '/users/:id' do
  # user = User.find(params[:id])
  # user.destroy
  # redirect '/'
# end


