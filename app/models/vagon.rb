class Vagon < ApplicationRecord 
  validates  :vtype, presence: true
  validates  :vnumber, uniqueness: {scope: :train_id} 
  belongs_to :train, optional: true

  before_validation :set_serial_number

  private 

  def set_serial_number 
    set_number = train.vagons.count 
    self.vnumber ||= set_number + 1
  end 
end
