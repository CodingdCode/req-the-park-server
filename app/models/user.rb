class User < ApplicationRecord

  has_many :challengers
  has_many :challengees
  # has_many :matches, through :challenger, :challengee
end
