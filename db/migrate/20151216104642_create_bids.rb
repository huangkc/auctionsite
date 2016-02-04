class CreateBids < ActiveRecord::Migration
  def change
  	create_table :bids do |t|
  		t.integer :bid_price
  		t.references :user
  		t.references :item
  		t.timestamps
  	end
  end
end
