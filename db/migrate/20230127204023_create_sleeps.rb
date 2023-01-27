class CreateSleeps < ActiveRecord::Migration[7.0]
  def change
    create_table :sleeps do |t|
      t.integer :user_id
      t.date :date
      t.integer :hours_slept
      t.boolean :restless_sleep

      t.timestamps
    end
  end
end
