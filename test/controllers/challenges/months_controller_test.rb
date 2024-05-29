require "test_helper"

class Challenges::MonthsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get challenges_months_index_url
    assert_response :success
  end
end
