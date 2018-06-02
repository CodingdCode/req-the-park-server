class Challengee < ApplicationRecord

  belongs_to :user
  has_one :match
end
