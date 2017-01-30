require 'test_helper'

class IchipostsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
