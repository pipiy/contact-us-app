require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get us" do
    get :us
    assert_response :success
  end

end
