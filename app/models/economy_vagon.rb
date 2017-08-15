class EconomyVagon < Vagon 
  validates :top_seat, :bottom_seat, :l_top_seat, :l_botom_seat, presence: true
end
