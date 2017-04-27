class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :address
      t.string :date
      t.references :user, foreign_key: true
      t.references :bartender, foreign_key: true
      t.string :type
      t.integer :size

      t.timestamps
    end
  end
end
