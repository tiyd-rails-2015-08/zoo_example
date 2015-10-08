class AddExhibitIdToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :exhibit_id, :integer
  end
end
