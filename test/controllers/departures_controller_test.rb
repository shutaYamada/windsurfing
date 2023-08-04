require "test_helper"

class DeparturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get departures_index_url
    assert_response :success
  end

  test "should get new" do
    get departures_new_url
    assert_response :success
  end

  test "should get edit" do
    get departures_edit_url
    assert_response :success
  end
end
