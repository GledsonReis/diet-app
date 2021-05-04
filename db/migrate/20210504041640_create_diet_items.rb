class CreateDietItems < ActiveRecord::Migration[6.1]
  def change
    create_table :diet_items do |t|
      t.text :description
      t.integer :meal
      t.datetime :schedule
      t.references :diet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
