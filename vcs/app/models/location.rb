class Location < ActiveRecord::Base
  belongs_to :farmer
  belongs_to :wholeseller
end
