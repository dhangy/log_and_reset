class CreateBeverages < ActiveRecord::Migration[7.0]
  def change
    create_table :beverages do |t|
      t.integer :user_id
      t.date :date
      t.integer :water_in_oz
      t.integer :cups_of_coffee
      t.integer :cups_of_tea
      t.integer :alcoholic_drinks
      t.timestamps
    end
  end
end
