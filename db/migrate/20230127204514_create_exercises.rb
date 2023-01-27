class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.integer :user_id
      t.date :date
      t.integer :minutes_of_exercise
      t.integer :exercise_intensity
      t.integer :exercise_type, :default => 0  # 0 = none, 1 = cardio, 2 = strength, 3 = both
      
      t.timestamps
    end
  end
end
