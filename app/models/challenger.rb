class Challenger < ApplicationRecord

  belongs_to :user
  has_and_belongs_to_many :matches
end