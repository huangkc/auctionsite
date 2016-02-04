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
