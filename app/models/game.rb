class Game < ActiveRecord::Base
  has_many :pieces
  belongs_to :black_player
  belongs_to :white_player
  belongs_to :active_player
end