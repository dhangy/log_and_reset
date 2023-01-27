class CreateCycles < ActiveRecord::Migration[7.0]
  def change
    create_table :cycles do |t|
      t.integer :user_id
      t.date :date
      t.integer :cycle_status, :default => 0  # 0 = not started, 1 = pre-menstrual symptoms, 2 = menstrating
      t.integer :pain_level


      t.timestamps
    end
  end
end
