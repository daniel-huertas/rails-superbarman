class RenameTypeFromParties < ActiveRecord::Migration[5.0]
  def change
    rename_column :parties, :type, :theme
  end
end
