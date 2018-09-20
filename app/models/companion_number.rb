class CompanionNumber < ApplicationRecord
  belongs_to :companion
  belongs_to :guest

  def self.guest_sum
      CompanionNumber.sum(:number)
  end
end
