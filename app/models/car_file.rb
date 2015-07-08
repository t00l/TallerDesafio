class CarFile < ActiveRecord::Base
  belongs_to :office
  belongs_to :car
  has_many :records
end
