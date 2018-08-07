class RemovePartFromParticipation < ActiveRecord::Migration[5.1]
  def change
    remove_column :participations, :part, :boolean
  end

end
