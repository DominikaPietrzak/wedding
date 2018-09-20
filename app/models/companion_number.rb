class CompanionNumber < ApplicationRecord
  belongs_to :companion
  belongs_to :guest
end
