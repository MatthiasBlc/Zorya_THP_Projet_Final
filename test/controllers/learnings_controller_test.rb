require 'test_helper'

class LearningsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get learnings_show_url
    assert_response :success
  end

end
