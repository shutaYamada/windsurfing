require "test_helper"

class DepDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get detail" do
    get dep_detail_detail_url
    assert_response :success
  end
end
