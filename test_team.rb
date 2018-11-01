require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

# Add a unit test for the to_hash method of the Team class that checks the structure of the hash it returns.
#
# Once your test passes, try breaking the code on purpose and make sure your test fails in response.
# Once you've verified that your test is checking something useful,
# remember to restore the code itself to working order.


class TestTeam < MiniTest::Test

  # working

  def test_has_is_forming
    new_team = Team.new("Bender", 7, ["Stephen, Daniel, Kevin, Nicholas"])
    actual_team = new_team.to_hash
    expected_team = {team_name: "Bender", level: 7, points: 0}

    puts actual_team
    puts expected_team

    assert_equal(expected_team, actual_team)
  end

  # not working
  
  # def test_has_is_forming
  #   new_team = Team.new("Bender", 7, ["Stephen, Daniel, Kevin, Nicholas"])
  #   actual_team = new_team.to_hash
  #   expected_team = {team_name: "Bender", level: 7, team_member_names: ["Stephen, Daniel, Kevin, Nicholas"]}
  #
  #   puts actual_team
  #   puts expected_team
  #
  #   assert_equal(expected_team, actual_team)
  # end

end
