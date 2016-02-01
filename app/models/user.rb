class User < ActiveRecord::Base
  has_many :items, dependent: :destroy
  has_many :bids, dependent: :destroy

  include BCrypt
  validates :username, presence: true, uniqueness: true
  validates :password_hash, presence: true
  # validates :password, length: {minimum: 6}

  def password
     @password ||= Password.new(password_hash)
  end

  def password=(new_password)
     @password = Password.create(new_password)
     self.password_hash = @password
  end

  def login(password)
      self.password ==password
  end
end
