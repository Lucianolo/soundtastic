class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :description
      t.integer :length, default: 0
      t.string :cover_url
      t.integer :rating, default: 0
      t.integer :played_count, default: 0

      t.timestamps
    end
  end
end
