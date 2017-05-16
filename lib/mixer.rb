require './lib/team_ball'

class Mixer

  attr_reader :cage, :count

  def initialize(cage = [])
    @cage = cage
    @count = count
  end

  def balls_in_cage
    # @cage.reduce(:+)
    @cage.count
  end

  def choose
    chosen = @cage.sample
    # puts chosen.team
    chosen.team
  end

  def scale
    957.times {puts choose}
    # binding.pry
  end

end

# mixer = Mixer.new
# puts mixer.choose
