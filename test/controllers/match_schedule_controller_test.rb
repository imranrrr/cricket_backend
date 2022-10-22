require "test_helper"

class MatchScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get match_schedule_index_url
    assert_response :success
  end
end
