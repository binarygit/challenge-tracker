require "test_helper"

class Challenges::MonthsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get challenge_months_url(challenges(:one))
    assert_response :success
  end
end
