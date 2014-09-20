class Farmer < ActiveRecord::Base
  validates_presence_of :name, :phone
end
