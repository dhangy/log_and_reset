class CreateMentalHealths < ActiveRecord::Migration[7.0]
  def change
    create_table :mental_healths do |t|
      t.integer :user_id
      t.date :date
      t.string :morning_mood
      t.string :afternoon_mood
      t.string :evening_mood
  
      t.timestamps
    end
  end
end


