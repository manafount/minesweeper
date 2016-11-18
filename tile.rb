class Tile

  attr_accessor :neighbors, :mine, :flag, :selected

  def initialize
    @flag = nil
    @mine = false
    @neighbors = 0
    @selected = false
  end

  def is_mine?
    mine
  end



end
