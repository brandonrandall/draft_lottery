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
    @cage.count
  end

  def choose
    chosen = @cage.sample
    chosen_team = chosen.team
    @picks.push(chosen_team)
    @cage = @cage.select { |team| team.team != chosen_team }
  end
end
