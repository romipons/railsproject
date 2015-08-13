require 'test_helper'

class GraphicsControllerTest < ActionController::TestCase
  test "should get graphics" do
    get :graphics
    assert_response :success
  end

end
