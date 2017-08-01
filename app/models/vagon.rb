class Vagon < ApplicationRecord 
  validates  :vtype, presence: true
  validates  :vnumber, uniqueness: {scope: :train_id} 
  belongs_to :train, optional: true

  before_validation :set_serial_number

  private 

  def set_serial_number 
    ser_number = train.vagons.count 
    self.vnumber ||= ser_number + 1
  end 
end
