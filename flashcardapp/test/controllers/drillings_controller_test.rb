require 'test_helper'

class DrillingsControllerTest < ActionController::TestCase
  test "should get create" do
    post :create
    assert_response :success
  end

  test "should get destroy" do
    post :destroy
    assert_response :success
  end

end
