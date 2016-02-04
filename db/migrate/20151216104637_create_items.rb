class CreateItems < ActiveRecord::Migration
  def change
  	create_table :items do |t|
  		t.string :title
  		t.text :description
  		t.datetime :auction_start
  		t.datetime :auction_end
  		t.references :user
  		t.timestamps
  	end
  end
end
