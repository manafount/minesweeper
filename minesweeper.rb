# require 'remedy'
#
# include Remedy
# user_input = Interaction.new
# until 1==0
#   user_input.loop do |key|
#     puts key
#   end
# end

class Minesweeper
  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

end

if $PROGRAM_NAME == __FILE__
  grid = Board.new(5)
  Minesweeper.new(grid)
end
