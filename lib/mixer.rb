require './lib/team_ball'

class Mixer

  attr_reader :cage, :count, :current_pick

  def initialize(cage = [])
    @cage = cage
    @count = count
    @picks = []
  end

  def current_pick
    @picks.last
  end

  def balls_in_cage
    # @cage.reduce(:+)
    @cage.count
    # binding.pry
  end

  def choose
    chosen = @cage.sample
    # puts chosen.team
    # binding.pry
    chosen_team = chosen.team
    #need to take the selected object and insert into the chosen array
    @picks.push(chosen_team)
    #then need to delete all objects in the cage that have the same name
    @cage = @cage.select { |team| team.team != chosen_team }

  end

  end

# mixer = Mixer.new
# puts mixer.choose
