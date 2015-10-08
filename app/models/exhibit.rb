class Exhibit < ActiveRecord::Base
  has_many :animals
  accepts_nested_attributes_for :animals,
      reject_if: :all_blank,
      allow_destroy: true

  def animal_names
    animals.map{|a| a.name}
  end
end
