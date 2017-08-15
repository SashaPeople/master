class CupeVagon < Vagon
  validates :top_seat, :bottom_seat, presence: true
end
