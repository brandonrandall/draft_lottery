require 'minitest/autorun'
require 'pry'
require 'minitest/pride'
require './lib/team_ball'
require './lib/mixer'

class DraftLotteryTest < Minitest::Test

  def setup

    @mixer = Mixer.new

    celtics = TeamBall.new("Boston Celtics")
    @celtics_balls = 250.times {@mixer.cage.push(celtics)}
    suns = TeamBall.new("Phoenix Suns")
    @suns_balls = 199.times {@mixer.cage.push(suns)}
    lakers = TeamBall.new("Los Angeles Lakers")
    @lakers_balls = 156.times {@mixer.cage.push(lakers)}
    sixers = TeamBall.new("Philadelphia 76ers")
    @sixers_balls = 119.times {@mixer.cage.push(sixers)}
    magic = TeamBall.new("Orlando Magic")
    @magic_balls = 88.times {@mixer.cage.push(magic)}
    knicks = TeamBall.new("New York Knicks")
    @knicks_balls = 53.times {@mixer.cage.push(knicks)}
    kings = TeamBall.new("Sacramento Kings")
    @kings_balls = 28.times {@mixer.cage.push(kings)}
    mavs = TeamBall.new("Dallas Mavericks")
    @mavs_balls = 17.times {@mixer.cage.push(mavs)}
    kings_from_pelicans = TeamBall.new("New Orleans Pelicans")
    @kings_from_pelicans_balls = 11.times {@mixer.cage.push(kings_from_pelicans)}
    hornets = TeamBall.new("Charlotte Hornets")
    @hornets_balls = 8.times {@mixer.cage.push(hornets)}
    pistons = TeamBall.new("Detroit Pistons")
    @pistons_balls = 7.times {@mixer.cage.push(pistons)}
    nuggets = TeamBall.new("Denver Nuggets")
    @nuggets_balls = 6.times {@mixer.cage.push(nuggets)}
    heat = TeamBall.new("Miami Heat")
    @heat_balls = 5.times {@mixer.cage.push(heat)}

  end

  def test_teams_have_correct_amounts_of_balls

    assert_equal 250, @celtics_balls
    assert_equal 156, @lakers_balls
    assert_equal 6, @nuggets_balls
# count the number of balls in the cage
    assert_equal 947, @mixer.balls_in_cage
  end

  def test_cage_can_make_one_pick
    teams_not_picked    = @mixer.choose
    current_picked_team = @mixer.current_pick

    refute teams_not_picked.include?(current_picked_team)
    assert_equal Integer, @mixer.balls_in_cage.class
    assert (@mixer.balls_in_cage < 947), "Mixer count is not less than 947."
  end

  def test_cage_can_make_more_than_one_pick
    teams_not_picked    = @mixer.choose
    first_pick          = @mixer.current_pick
    teams_not_picked    = @mixer.choose
    current_picked_team = @mixer.current_pick
# binding.pry
    refute first_pick == current_picked_team
  end

  def test_cage_can_make_3_picks
    teams_not_picked    = @mixer.choose
    first_pick          = @mixer.current_pick
    teams_not_picked    = @mixer.choose
    second_pick         = @mixer.current_pick
    teams_not_picked    = @mixer.choose
    third_pick          = @mixer.current_pick

    refute first_pick == third_pick
    binding.pry
    refute second_pick == third_pick

  end
end
