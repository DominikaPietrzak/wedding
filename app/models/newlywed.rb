class Newlywed < ApplicationRecord
  has_many :expense
  has_many :guest_lists
end
