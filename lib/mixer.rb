class Mixer

  attr_reader :cage, :count

  def initialize(cage = [])
    @cage = cage
    @count = count
  end

  def balls_in_cage
    @cage.reduce(:+)
  end
end
