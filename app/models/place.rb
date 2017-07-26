class Place < ApplicationRecord 
  validates  :ptype, presence: true
  belongs_to :vagon
end
