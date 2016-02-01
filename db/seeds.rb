require 'Faker'

User.create(username: "tom", password: "password")
19.times do
  User.create(username: Faker::Internet.user_name, password: "password")
end

100.times do
  Item.create(user_id: rand(1..20), title: Faker::Lorem.sentence, description: Faker::Lorem.sentence(2), auction_start: Faker::Time.backward(2), auction_end: Faker::Time.forward(2))
end

100.times do
  Bid.create(user_id: rand(1..20), item_id: rand(1..100), bid_price: rand(1..100))
end
