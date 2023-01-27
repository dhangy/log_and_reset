class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.integer :user_id
      t.date :date
      t.integer :calories
      t.boolean :processed_food # 0 = no, 1 = yes

      t.timestamps
    end
  end
end
