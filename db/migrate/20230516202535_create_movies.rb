class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :rating
      t.boolean :adult_supervision

      t.timestamps
    end
  end
end
