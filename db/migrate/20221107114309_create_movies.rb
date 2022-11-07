class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :synopsis
      t.datetime :launch_date
      t.string :age_classification
      t.string :length
      t.string :genre
      t.string :director
      t.string :poster
      t.decimal :rating_avg

      t.timestamps
    end
  end
end
