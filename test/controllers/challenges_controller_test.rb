require "test_helper"

class ChallengesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get challenges_url
    assert_response :success
  end
end
