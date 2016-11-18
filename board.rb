require_relative 'tile.rb'

class Board
  attr_reader :grid, :size

  def create_minefield(size)
    grid = Array.new(size) do
      Array.new(size) { Tile.new }
    end
    grid
  end

  def bombs_away
    grid.each do |row|
      row.each do |tile|
        tile.mine = true if rand(5) == 0
      end
    end
  end

  def send_neighbors
    size.times do |i|
      size.times do |j|
        tile = grid[i, j]
        tile.neighbors = count_neighbors([i, j])
      end
    end
  end

  def count_neighbors(pos)
    sum = 0
    row, col = pos
    (-1..1).each do |i|
      (-1..1).each do |j|
        next if i.zero? && j.zero?
        next if grid[row + i][col + j].nil?
        sum += 1 if grid[row + i][col + j].is_mine
      end
    end
    sum
  end

  def initialize(size = 9)
    @size = size
    @grid = create_minefield(size)
    bombs_away
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    tile = grid[x][y]
    tile.value = value
  end

end
