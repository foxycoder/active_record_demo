class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :plot
      t.string :picture
      t.date :release_date
      t.integer :duration
      t.references :director, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
