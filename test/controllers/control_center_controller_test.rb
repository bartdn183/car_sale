require 'test_helper'

class ControlCenterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get control_center_index_url
    assert_response :success
  end

end
