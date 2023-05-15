class CreateTheater < ActiveRecord::Migration[7.0]
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :location
      t.integer :hours
      t.boolean :matinee

      t.timestamps
    end
  end
end
