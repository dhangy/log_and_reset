class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.integer :user_id
      t.date :date
      t.integer :hours_of_tv
      t.integer :hours_on_phone
      t.integer :hours_of_social_media
      t.integer :hours_of_video_games
      t.boolean :listened_to_music
      t.boolean :read_book

      t.timestamps
    end
  end
end
