class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :name
      t.string :climate
      t.integer :year_opened

      t.timestamps null: false
    end
  end
end
