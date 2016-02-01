class Item < ActiveRecord::Base
  belongs_to :user
  has_many :bids

  def self.active_items
    return Item.where("auction_start < ? AND auction_end > ?", DateTime.now, DateTime.now)
  end
  
end
