require "test_helper"

class ChallengeDays::PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get challenge_days_photos_show_url
    assert_response :success
  end
end
