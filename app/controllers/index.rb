#Create controllers for items, users, bids, and sessions'
#Implement login/logout with sessions and bcrypt
	#Modify header on layout page for login/logout
#Create items index view - shows all/active items
#Create user profile page - show all/active items
#Implement CRUD on user profile page
	#Show all/active items
	#User can create a new item
	#User can delete an item
	#User can edit an existing item
	#Show user's bids
	#Show user's wins

get '/' do 
  redirect '/items'
end