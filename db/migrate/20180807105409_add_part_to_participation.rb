class AddPartToParticipation < ActiveRecord::Migration[5.1]
  def change
    add_column :participations, :part, :string
  end
end
