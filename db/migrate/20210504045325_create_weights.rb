class CreateWeights < ActiveRecord::Migration[6.1]
  def change
    create_table :weights do |t|
      t.float :velue
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
