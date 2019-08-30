class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.datetime :date
      t.time :play
      t.integer :price
      t.string :song
      t.integer :user_id

      t.timestamps
    end
  end
end
