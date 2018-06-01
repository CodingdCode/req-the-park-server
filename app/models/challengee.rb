class Challengee < ApplicationRecord

  belongs_to :user
  has_one :matches
end
