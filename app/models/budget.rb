class Budget < ApplicationRecord
  belongs_to :admin_user
  belongs_to :event
end
