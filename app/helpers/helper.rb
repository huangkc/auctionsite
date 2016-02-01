helpers do
  def current_user
   @current_user ||= User.find_by_id(session[:id]) if session[:id]
  end

  def find_winning_bids
    max_bids = []
  	@all_items.each do |item|
    	bid = item.bids.maximum('bid_price')
    	max_bids.push(Bid.where(bid_price: bid))   
  	end
  	@winning_bids = []
  	max_bids.each do |bid|
     bid.each do |price|
		  if price.user_id == @user.id
	       @winning_bids.push(price)
	    end
	   end
    end
  end
end
