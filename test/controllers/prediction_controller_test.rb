require "test_helper"

class PredictionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prediction_index_url
    assert_response :success
  end
end
