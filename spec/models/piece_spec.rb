require 'rails_helper'

RSpec.describe Piece, type: :model do
  describe "obstructed method" do
    it "should return nil if invalid move" do
      piece = Piece.create(x_position: 4, y_position: 4)
      expect(piece.obstructed?(1,3)).to eq nil
    end

    it "should return position if obstructed on right" do
      piece = Piece.create(x_position: 0, y_position: 2)
      expect(piece.obstructed?(4,2)).to eq [2, 2]
    end

    it "should return position if obstructed on left" do
      piece = Piece.create(x_position: 4, y_position: 2)
      expect(piece.obstructed?(0,2)).to eq [2, 2]
    end

    it "should return position if obstructed below" do
      piece = Piece.create(x_position: 2, y_position: 0)
      expect(piece.obstructed?(2,4)).to eq [2, 2]
    end

    it "should return position if obstructed above" do
      piece = Piece.create(x_position: 2, y_position: 4)
      expect(piece.obstructed?(2,0)).to eq [2, 2]
    end

    it "should return position if obstructed diagonal down-right" do
      piece = Piece.create(x_position: 0, y_position: 0)
      expect(piece.obstructed?(4,4)).to eq [2, 2]
    end

    it "should return position if obstructed diagonal up-left" do
      piece = Piece.create(x_position: 0, y_position: 4)
      expect(piece.obstructed?(4,0)).to eq [2, 2]
    end
  end
end
