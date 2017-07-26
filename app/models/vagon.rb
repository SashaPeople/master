class Vagon < ApplicationRecord 
  validates  :vtype, presence: true
  belongs_to :train, optional: true
  has_many   :places

end
