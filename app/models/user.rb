class User < ApplicationRecord

  has_secure_password
  has_many :challengers
  has_many :challengees
  # has_many :matches, through :challenger, :challengee

  
end
