class CreatePainLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :pain_levels do |t|
      t.integer :user_id
      t.date :date
      t.integer :pain_level
      t.integer :pain_type # 0 = headache, 1 = stomach, 2 = muscle, 3 = joint, 4 = other

      t.timestamps
    end
  end
end
