# index
# get '/bids' do 
# end

# new
# get '/bids/new' do
# end

post '/bids' do
  @item_id = params[:id]
  @bid = Bid.new(bid_price: params[:bid_price], item_id: params[:id], user_id: current_user.id)
  if @bid.save
	  redirect "/items/#{@item_id}"
  else
	 status 400
	 @errors = @bid.errors.full_messages
   end
end

# show
# get '/bids/:id' do 
# end

# edit
# get '/bids/:id/edit/' do 
# end

# update
# put 'bids/:id' do 
		# @bid = Bid.find(params[:id])
#   @bid.update(params[:bid])
#   redirect "/users/#{@user.id}"
# end

# delete
# delete '/bids/:id' do
	# bids = Bid.find(params[:id])
	# bids.destroy
	# redirect '/'
# end

