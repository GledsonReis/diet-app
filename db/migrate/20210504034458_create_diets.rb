class CreateDiets < ActiveRecord::Migration[6.1]
  def change
    create_table :diets do |t|
      t.datetime :start
      t.datetime :end
      t.float :ideal_weight
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
