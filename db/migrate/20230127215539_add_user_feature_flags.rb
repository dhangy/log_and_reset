class AddUserFeatureFlags < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :beverage_feature, :boolean, default: false
    add_column :users, :food_feature, :boolean, default: false
    add_column :users, :mental_health_feature, :boolean, default: false
    add_column :users, :sleep_feature, :boolean, default: false
    add_column :users, :relationship_feature, :boolean, default: false
    add_column :users, :exercise_feature, :boolean, default: false
    add_column :users, :cycle_feature, :boolean, default: false
    add_column :users, :pain_level_feature, :boolean, default: false
    add_column :users, :media_feature, :boolean, default: false
  end
end
