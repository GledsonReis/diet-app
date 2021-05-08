class RenameVelueToValueInWeights < ActiveRecord::Migration[6.1]
  def change
    rename_column :weights, :velue, :value
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
