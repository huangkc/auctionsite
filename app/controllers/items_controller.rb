get '/items' do
  @items = Item.all.take(20)
  @active_items = Item.active_items.take(10)
  erb :'/items/index'
end

get '/items/new' do
  if request.xhr?
    erb :'items/new', layout: false 
  else
    erb :'items/new'
  end
end

post '/items' do
  @item = Item.new(user_id: current_user.id, title: params[:title], description: params[:description], auction_start: params[:auction_start], auction_end: params[:auction_end])
  if @item.save
    # p params[:title]
    redirect "/users/#{current_user.id}"
  else 
    status 400
    @errors = @item.errors.full_messages
    redirect '/items/new'
  end
end

get '/items/:id' do
  @item = Item.find(params[:id])
  @bids = @item.bids
  @winning_bid = @bids.max
  erb :'/items/show'
end

get '/items/:id/edit' do
  @item=Item.find(params[:id])
  if request.xhr?
    erb :'/items/edit', layout: false
  else
    erb :'/items/edit'
  end
end

put '/items/:id' do
  @item=Item.find(params[:id])
  @item.update(title: params[:title], description: params[:description], auction_start: params[:auction_start], auction_end: params[:auction_end])
  redirect "/users/#{current_user.id}"
end

delete '/items/:id' do
  @item=Item.find(params[:id])
  @item.destroy
  redirect "/users/#{current_user.id}"
end

get '/items/:id/bids/new' do
  @item = Item.find(params[:id])
  erb :'/bids/new', locals:{item: @item}, layout: false
end