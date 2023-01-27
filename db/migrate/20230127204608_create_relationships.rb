class CreateRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.date :date
      t.boolean :meaningful_time
      t.boolean :interpersonal_conflict
      t.boolean :interpersonal_support
      t.boolean :interpersonal_empathy
      t.boolean :time_with_friends
      t.boolean :time_with_family
      t.boolean :time_with_significant_other


      t.timestamps
    end
  end
end
