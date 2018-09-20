class RenameAccompaningPersonsNumbersToCompanionNumber < ActiveRecord::Migration[5.1]
  def change
    rename_table :accompaning_persons_numbers, :companion_numbers
  end
end
