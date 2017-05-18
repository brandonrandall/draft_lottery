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

  def show_the_rest_of_the_lottery
    sorted = @cage.sort_by {|ball|ball.team}
    sorted.uniq{|x|x.team}
  end
end
#need to take all of the balls out of the mixer and count them
#then need to grab the team with the highest percentage and each thereafter in the same order
#need to see how many times it takes to get the actual 3 in the actual order
