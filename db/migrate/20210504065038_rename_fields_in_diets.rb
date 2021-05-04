class RenameFieldsInDiets < ActiveRecord::Migration[6.1]
  def change
    rename_column :diets, :start, :start_at
    rename_column :diets, :end, :finish_at
  end
end
