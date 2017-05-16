require 'minitest/autorun'
require 'pry'
require 'minitest/pride'
require './lib/team_ball'
require './lib/mixer'

class DraftLotteryTest < Minitest::Test

  def test_teams_have_correct_amounts_of_balls

    mixer = Mixer.new

    celtics = TeamBall.new("Boston Celtics")
    celtics_balls = 250.times {mixer.cage.push(celtics)}
    suns = TeamBall.new("Phoenix Suns")
    suns_balls = 199.times {mixer.cage.push(suns)}
    lakers = TeamBall.new("Los Angeles Lakers")
    lakers_balls = 156.times {mixer.cage.push(lakers)}
    sixers = TeamBall.new("Philadelphia 76ers")
    sixers_balls = 119.times {mixer.cage.push(sixers)}
    magic = TeamBall.new("Orlando Magic")
    magic_balls = 88.times {mixer.cage.push(magic)}
    knicks = TeamBall.new("New York Knicks")
    knicks_balls = 53.times {mixer.cage.push(knicks)}
    kings = TeamBall.new("Sacramento Kings")
    kings_balls = 28.times {mixer.cage.push(kings)}
    mavs = TeamBall.new("Dallas Mavericks")
    mavs_balls = 17.times {mixer.cage.push(mavs)}
    kings_from_pelicans = TeamBall.new("New Orleans Pelicans")
    kings_from_pelicans_balls = 11.times {mixer.cage.push(kings_from_pelicans)}
    hornets = TeamBall.new("Charlotte Hornets")
    hornets_balls = 8.times {mixer.cage.push(hornets)}
    pistons = TeamBall.new("Detroit Pistons")
    pistons_balls = 7.times {mixer.cage.push(pistons)}
    nuggets = TeamBall.new("Denver Nuggets")
    nuggets_balls = 6.times {mixer.cage.push(nuggets)}
    heat = TeamBall.new("Miami Heat")
    heat_balls = 5.times {mixer.cage.push(heat)}

    assert_equal 250, celtics_balls
    assert_equal 156, lakers_balls
    assert_equal 6, nuggets_balls
# count the number of balls in the cage

    assert_equal 947, mixer.balls_in_cage
  end

  def test_cage_has_random_picks

    mixer = Mixer.new

    celtics = TeamBall.new("Boston Celtics")
    celtics_balls = 250.times {mixer.cage.push(celtics)}
    suns = TeamBall.new("Phoenix Suns")
    suns_balls = 199.times {mixer.cage.push(suns)}
    lakers = TeamBall.new("Los Angeles Lakers")
    lakers_balls = 156.times {mixer.cage.push(lakers)}
    sixers = TeamBall.new("Philadelphia 76ers")
    sixers_balls = 119.times {mixer.cage.push(sixers)}
    magic = TeamBall.new("Orlando Magic")
    magic_balls = 88.times {mixer.cage.push(magic)}
    knicks = TeamBall.new("New York Knicks")
    knicks_balls = 53.times {mixer.cage.push(knicks)}
    kings = TeamBall.new("Sacramento Kings")
    kings_balls = 28.times {mixer.cage.push(kings)}
    mavs = TeamBall.new("Dallas Mavericks")
    mavs_balls = 17.times {mixer.cage.push(mavs)}
    kings_from_pelicans = TeamBall.new("New Orleans Pelicans")
    kings_from_pelicans_balls = 11.times {mixer.cage.push(kings_from_pelicans)}
    hornets = TeamBall.new("Charlotte Hornets")
    hornets_balls = 8.times {mixer.cage.push(hornets)}
    pistons = TeamBall.new("Detroit Pistons")
    pistons_balls = 7.times {mixer.cage.push(pistons)}
    nuggets = TeamBall.new("Denver Nuggets")
    nuggets_balls = 6.times {mixer.cage.push(nuggets)}
    heat = TeamBall.new("Miami Heat")
    heat_balls = 5.times {mixer.cage.push(heat)}

    lucky_first = TeamBall
    lucky_second = TeamBall
    lucky_third = TeamBall

    assert_equal String, mixer.choose.class
    # how is this an integer?
    assert_equal Integer, mixer.scale.class

  end

end
