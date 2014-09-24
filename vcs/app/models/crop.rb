class Crop < ActiveRecord::Base
  belongs_to :farmer
  belongs_to :wholeseller
  has_one :crop_pricing
  delegate :price, :to => :crop_pricing
end
