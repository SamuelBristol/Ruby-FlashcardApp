require 'test_helper'

class DrillsControllerTest < ActionController::TestCase
  setup do
    @drill = drills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drill" do
    assert_difference('Drill.count') do
      post :create, drill: { name: @drill.name }
    end

    assert_redirected_to drill_path(assigns(:drill))
  end

  test "should show drill" do
    get :show, id: @drill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drill
    assert_response :success
  end

  test "should update drill" do
    patch :update, id: @drill, drill: { name: @drill.name }
    assert_redirected_to drill_path(assigns(:drill))
  end

  test "should destroy drill" do
    assert_difference('Drill.count', -1) do
      delete :destroy, id: @drill
    end

    assert_redirected_to drills_path
  end
end
