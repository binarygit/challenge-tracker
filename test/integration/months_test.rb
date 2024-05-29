require "test_helper"

class MonthsTest < ActionDispatch::IntegrationTest
  def test_can_view_the_months_show_page
    challenge = challenges(:one)
    assert challenge
    # Test that the number of cards is equal to the num of challenge_days
    # in that month.
    get challenge_month_path(challenge, 5)
    assert_response :success
    assert_select "h1", challenge.name
    assert_select ".challenge-day-card", 31
    get challenge_month_path(challenge, 6)
    assert_response :success
    assert_select "h1", challenge.name
    assert_select ".challenge-day-card", 30
  end
end
