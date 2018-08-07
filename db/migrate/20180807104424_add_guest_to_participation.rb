class AddGuestToParticipation < ActiveRecord::Migration[5.1]
  def change
    add_reference :participations, :guest, foreign_key: true
  end
end
