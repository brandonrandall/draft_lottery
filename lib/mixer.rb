require './lib/team_ball'

class Mixer

  attr_reader :cage, :count, :current_pick, :picks

  def initialize(cage = [])
    @cage = cage
    @count = count
    @picks = []
  end

  def balls_in_cage
    @cage.count
  end

  def choose(amount)
    amount.times do
      chosen = @cage.sample
      @picks.push(chosen.team)
      @cage = @cage.select { |team| team.team != chosen.team }
    end
  end

  def display_picks
    displayed_picks = @picks.join(",")
    "The first #{@picks.length} picks are: #{displayed_picks}"
  end

  def show_the_rest_of_the_lottery
    sorted = @cage.sort_by {|ball|ball.team}
    sorted.uniq{|x|x.team}
  end
end
