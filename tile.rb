class Tile

  attr_accessor :neighbors, :mine, :flag, :selected, :revealed

  def initialize
    @flag = nil
    @mine = false
    @neighbors = 0
    @selected = false
  end

  def is_mine?
    mine
  end

  def is_revealed?
    revealed
  end



end
