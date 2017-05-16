require 'minitest/autorun'
require 'pry'
require 'minitest/pride'
require './lib/team_ball'
require './lib/mixer'

class DraftLotteryTest < Minitest::Test

  def test_teams_have_correct_amounts_of_balls
    celtics = TeamBall.new("Boston Celtics")
    celtics_balls = 250.times {celtics}
    suns = TeamBall.new("Phoenix Suns")
    suns_balls = 199.times {suns}
    lakers = TeamBall.new("Los Angeles Lakers")
    lakers_balls = 156.times {lakers}
    sixers = TeamBall.new("Philadelphia 76ers")
    sixers_balls = 119.times {sixers}
    magic = TeamBall.new("Orlando Magic")
    magic_balls = 88.times {magic}
    knicks = TeamBall.new("New York Knicks")
    knicks_balls = 53.times {knicks}
    kings = TeamBall.new("Sacramento Kings")
    kings_balls = 28.times {kings}
    mavs = TeamBall.new("Dallas Mavericks")
    mavs_balls = 17.times {mavs}
    kings_from_pelicans = TeamBall.new("New Orleans Pelicans")
    kings_from_pelicans_balls = 11.times {kings_from_pelicans}
    hornets = TeamBall.new("Charlotte Hornets")
    hornets_balls = 8.times {hornets}
    pistons = TeamBall.new("Detroit Pistons")
    pistons_balls = 7.times {pistons}
    nuggets = TeamBall.new("Denver Nuggets")
    nuggets_balls = 6.times {nuggets}
    heat = TeamBall.new("Miami Heat")
    heat_balls = 5.times {heat}

    mixer = Mixer.new()
    mixer.cage.push(
                    celtics_balls,suns_balls,lakers_balls,
                    sixers_balls,magic_balls,knicks_balls,
                    kings_balls,mavs_balls,kings_from_pelicans_balls,
                    hornets_balls,pistons_balls,nuggets_balls,heat_balls)
    assert_equal (
                  [celtics_balls,suns_balls,lakers_balls,
                  sixers_balls,magic_balls,knicks_balls,
                  kings_balls,mavs_balls,kings_from_pelicans_balls,
                  hornets_balls,pistons_balls,nuggets_balls,heat_balls]
                  ), mixer.cage

    assert_equal 250, celtics_balls
    assert_equal 156, lakers_balls
    assert_equal 6, nuggets_balls
# count the number of balls in the cage

    assert_equal 947, mixer.balls_in_cage
  end
end
