class Animal < ActiveRecord::Base
  belongs_to :exhibit
  validates :name, presence: true
end
